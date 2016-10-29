package com.squareup.okhttp.v_1_5_1;

import android.support.v7.widget.helper.ItemTouchHelper.Callback;
import com.squareup.okhttp.v_1_5_1.internal.Platform;
import com.squareup.okhttp.v_1_5_1.internal.http.HttpAuthenticator;
import com.squareup.okhttp.v_1_5_1.internal.http.HttpConnection;
import com.squareup.okhttp.v_1_5_1.internal.http.HttpEngine;
import com.squareup.okhttp.v_1_5_1.internal.http.HttpTransport;
import com.squareup.okhttp.v_1_5_1.internal.http.Request;
import com.squareup.okhttp.v_1_5_1.internal.http.Response;
import com.squareup.okhttp.v_1_5_1.internal.http.SpdyTransport;
import com.squareup.okhttp.v_1_5_1.internal.okio.BufferedSink;
import com.squareup.okhttp.v_1_5_1.internal.okio.BufferedSource;
import com.squareup.okhttp.v_1_5_1.internal.okio.Okio;
import com.squareup.okhttp.v_1_5_1.internal.spdy.SpdyConnection;
import com.squareup.okhttp.v_1_5_1.internal.spdy.SpdyConnection.Builder;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Proxy.Type;
import java.net.Socket;
import java.net.SocketTimeoutException;
import javax.net.ssl.SSLSocket;

/* compiled from: Twttr */
public final class Connection implements Closeable {
    private boolean connected;
    private Handshake handshake;
    private HttpConnection httpConnection;
    private int httpMinorVersion;
    private long idleStartTimeNs;
    private InputStream in;
    private OutputStream out;
    private final ConnectionPool pool;
    private int recycleCount;
    private final Route route;
    private BufferedSink sink;
    private Socket socket;
    private BufferedSource source;
    private SpdyConnection spdyConnection;

    public Connection(ConnectionPool connectionPool, Route route) {
        this.connected = false;
        this.httpMinorVersion = 1;
        this.pool = connectionPool;
        this.route = route;
    }

    public void connect(int i, int i2, TunnelRequest tunnelRequest) throws IOException {
        if (this.connected) {
            throw new IllegalStateException("already connected");
        }
        this.socket = this.route.proxy.type() != Type.HTTP ? new Socket(this.route.proxy) : new Socket();
        Platform.get().connectSocket(this.socket, this.route.inetSocketAddress, i);
        this.socket.setSoTimeout(i2);
        this.in = this.socket.getInputStream();
        this.out = this.socket.getOutputStream();
        if (this.route.address.sslSocketFactory != null) {
            upgradeToTls(tunnelRequest);
        } else {
            initSourceAndSink();
            this.httpConnection = new HttpConnection(this.pool, this, this.source, this.sink);
        }
        this.connected = true;
    }

    private void upgradeToTls(TunnelRequest tunnelRequest) throws IOException {
        Platform platform = Platform.get();
        if (requiresTunnel()) {
            makeTunnel(tunnelRequest);
        }
        this.socket = this.route.address.sslSocketFactory.createSocket(this.socket, this.route.address.uriHost, this.route.address.uriPort, true);
        SSLSocket sSLSocket = (SSLSocket) this.socket;
        if (this.route.modernTls) {
            platform.enableTlsExtensions(sSLSocket, this.route.address.uriHost);
        } else {
            platform.supportTlsIntolerantServer(sSLSocket);
        }
        boolean contains = this.route.address.protocols.contains(Protocol.SPDY_3);
        sSLSocket.startHandshake();
        if (this.route.address.hostnameVerifier.verify(this.route.address.uriHost, sSLSocket.getSession())) {
            this.out = sSLSocket.getOutputStream();
            this.in = sSLSocket.getInputStream();
            this.handshake = Handshake.get(sSLSocket.getSession());
            initSourceAndSink();
            Protocol protocol = Protocol.HTTP_11;
            if (contains) {
                protocol = Protocol.SPDY_3;
            }
            if (protocol.spdyVariant) {
                sSLSocket.setSoTimeout(0);
                this.spdyConnection = new Builder(this.route.address.getUriHost(), true, this.source, this.sink).protocol(protocol).build();
                this.spdyConnection.sendConnectionHeader();
                return;
            }
            this.httpConnection = new HttpConnection(this.pool, this, this.source, this.sink);
            return;
        }
        throw new IOException("Hostname '" + this.route.address.uriHost + "' was not verified");
    }

    public boolean isConnected() {
        return this.connected;
    }

    public void close() throws IOException {
        this.socket.close();
    }

    public Route getRoute() {
        return this.route;
    }

    public Socket getSocket() {
        return this.socket;
    }

    public boolean isAlive() {
        return (this.socket.isClosed() || this.socket.isInputShutdown() || this.socket.isOutputShutdown() || (isSpdy() && this.spdyConnection.isShutdown())) ? false : true;
    }

    public boolean isReadable() {
        int soTimeout;
        if (this.source == null || isSpdy()) {
            return true;
        }
        try {
            soTimeout = this.socket.getSoTimeout();
            this.socket.setSoTimeout(1);
            if (this.source.exhausted()) {
                this.socket.setSoTimeout(soTimeout);
                return false;
            }
            this.socket.setSoTimeout(soTimeout);
            return true;
        } catch (SocketTimeoutException e) {
            return true;
        } catch (IOException e2) {
            return false;
        } catch (Throwable th) {
            this.socket.setSoTimeout(soTimeout);
        }
    }

    public void resetIdleStartTime() {
        if (this.spdyConnection != null) {
            throw new IllegalStateException("spdyConnection != null");
        }
        this.idleStartTimeNs = System.nanoTime();
    }

    public boolean isIdle() {
        return this.spdyConnection == null || this.spdyConnection.isIdle();
    }

    public boolean isExpired(long j) {
        return getIdleStartTimeNs() < System.nanoTime() - j;
    }

    public long getIdleStartTimeNs() {
        return this.spdyConnection == null ? this.idleStartTimeNs : this.spdyConnection.getIdleStartTimeNs();
    }

    public Handshake getHandshake() {
        return this.handshake;
    }

    public Object newTransport(HttpEngine httpEngine) throws IOException {
        return this.spdyConnection != null ? new SpdyTransport(httpEngine, this.spdyConnection) : new HttpTransport(httpEngine, this.httpConnection);
    }

    public boolean isSpdy() {
        return this.spdyConnection != null;
    }

    public int getHttpMinorVersion() {
        return this.httpMinorVersion;
    }

    public void setHttpMinorVersion(int i) {
        this.httpMinorVersion = i;
    }

    public boolean requiresTunnel() {
        return this.route.address.sslSocketFactory != null && this.route.proxy.type() == Type.HTTP;
    }

    public void updateReadTimeout(int i) throws IOException {
        if (this.connected) {
            this.socket.setSoTimeout(i);
            return;
        }
        throw new IllegalStateException("updateReadTimeout - not connected");
    }

    public void incrementRecycleCount() {
        this.recycleCount++;
    }

    public int recycleCount() {
        return this.recycleCount;
    }

    private void makeTunnel(TunnelRequest tunnelRequest) throws IOException {
        BufferedSource buffer = Okio.buffer(Okio.source(this.in));
        HttpConnection httpConnection = new HttpConnection(this.pool, this, buffer, Okio.buffer(Okio.sink(this.out)));
        Request request = tunnelRequest.getRequest();
        String requestLine = tunnelRequest.requestLine();
        do {
            httpConnection.writeRequest(request.headers(), requestLine);
            httpConnection.flush();
            Response build = httpConnection.readResponse().request(request).build();
            httpConnection.emptyResponseBody();
            switch (build.code()) {
                case Callback.DEFAULT_DRAG_ANIMATION_DURATION /*200*/:
                    if (buffer.buffer().size() > 0) {
                        throw new IOException("TLS tunnel buffered too many bytes!");
                    }
                    return;
                case 407:
                    request = HttpAuthenticator.processAuthHeader(this.route.address.authenticator, build, this.route.proxy);
                    break;
                default:
                    throw new IOException("Unexpected response code for CONNECT: " + build.code());
            }
        } while (request != null);
        throw new IOException("Failed to authenticate with proxy");
    }

    private void initSourceAndSink() throws IOException {
        this.source = Okio.buffer(Okio.source(this.in));
        this.sink = Okio.buffer(Okio.sink(this.out));
    }
}
