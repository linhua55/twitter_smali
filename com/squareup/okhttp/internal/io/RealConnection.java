package com.squareup.okhttp.internal.io;

import android.support.v7.widget.helper.ItemTouchHelper.Callback;
import com.google.android.exoplayer.extractor.ts.PtsTimestampAdjuster;
import com.squareup.okhttp.Address;
import com.squareup.okhttp.CertificatePinner;
import com.squareup.okhttp.Connection;
import com.squareup.okhttp.ConnectionSpec;
import com.squareup.okhttp.Handshake;
import com.squareup.okhttp.HttpUrl;
import com.squareup.okhttp.Protocol;
import com.squareup.okhttp.Request;
import com.squareup.okhttp.Response;
import com.squareup.okhttp.Route;
import com.squareup.okhttp.internal.ConnectionSpecSelector;
import com.squareup.okhttp.internal.Platform;
import com.squareup.okhttp.internal.Util;
import com.squareup.okhttp.internal.Version;
import com.squareup.okhttp.internal.framed.FramedConnection;
import com.squareup.okhttp.internal.framed.FramedConnection.Builder;
import com.squareup.okhttp.internal.http.Http1xStream;
import com.squareup.okhttp.internal.http.OkHeaders;
import com.squareup.okhttp.internal.http.RouteException;
import com.squareup.okhttp.internal.http.StreamAllocation;
import com.squareup.okhttp.internal.tls.CertificateChainCleaner;
import com.squareup.okhttp.internal.tls.OkHostnameVerifier;
import com.squareup.okhttp.internal.tls.TrustRootIndex;
import java.io.IOException;
import java.lang.ref.Reference;
import java.net.ConnectException;
import java.net.Proxy;
import java.net.Proxy.Type;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.net.UnknownServiceException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import okio.ab;
import okio.i;
import okio.j;
import okio.q;

/* compiled from: Twttr */
public final class RealConnection implements Connection {
    private static SSLSocketFactory lastSslSocketFactory;
    private static TrustRootIndex lastTrustRootIndex;
    public final List<Reference<StreamAllocation>> allocations;
    public volatile FramedConnection framedConnection;
    private Handshake handshake;
    public long idleAtNanos;
    public boolean noNewStreams;
    private Protocol protocol;
    private Socket rawSocket;
    private final Route route;
    public i sink;
    public Socket socket;
    public j source;
    public int streamCount;

    public RealConnection(Route route) {
        this.allocations = new ArrayList();
        this.idleAtNanos = PtsTimestampAdjuster.DO_NOT_OFFSET;
        this.route = route;
    }

    public void connect(int i, int i2, int i3, List<ConnectionSpec> list, boolean z) throws RouteException {
        if (this.protocol != null) {
            throw new IllegalStateException("already connected");
        }
        ConnectionSpecSelector connectionSpecSelector = new ConnectionSpecSelector(list);
        Proxy proxy = this.route.getProxy();
        Address address = this.route.getAddress();
        if (this.route.getAddress().getSslSocketFactory() != null || list.contains(ConnectionSpec.CLEARTEXT)) {
            RouteException routeException = null;
            while (this.protocol == null) {
                try {
                    Socket createSocket = (proxy.type() == Type.DIRECT || proxy.type() == Type.HTTP) ? address.getSocketFactory().createSocket() : new Socket(proxy);
                    this.rawSocket = createSocket;
                    connectSocket(i, i2, i3, connectionSpecSelector);
                } catch (IOException e) {
                    Util.closeQuietly(this.socket);
                    Util.closeQuietly(this.rawSocket);
                    this.socket = null;
                    this.rawSocket = null;
                    this.source = null;
                    this.sink = null;
                    this.handshake = null;
                    this.protocol = null;
                    if (routeException == null) {
                        routeException = new RouteException(e);
                    } else {
                        routeException.addConnectException(e);
                    }
                    if (!z || !connectionSpecSelector.connectionFailed(e)) {
                        throw routeException;
                    }
                }
            }
            return;
        }
        throw new RouteException(new UnknownServiceException("CLEARTEXT communication not supported: " + list));
    }

    private void connectSocket(int i, int i2, int i3, ConnectionSpecSelector connectionSpecSelector) throws IOException {
        this.rawSocket.setSoTimeout(i2);
        try {
            Platform.get().connectSocket(this.rawSocket, this.route.getSocketAddress(), i);
            this.source = q.a(q.b(this.rawSocket));
            this.sink = q.a(q.a(this.rawSocket));
            if (this.route.getAddress().getSslSocketFactory() != null) {
                connectTls(i2, i3, connectionSpecSelector);
            } else {
                this.protocol = Protocol.HTTP_1_1;
                this.socket = this.rawSocket;
            }
            if (this.protocol == Protocol.SPDY_3 || this.protocol == Protocol.HTTP_2) {
                this.socket.setSoTimeout(0);
                FramedConnection build = new Builder(true).socket(this.socket, this.route.getAddress().url().host(), this.source, this.sink).protocol(this.protocol).build();
                build.sendConnectionPreface();
                this.framedConnection = build;
            }
        } catch (ConnectException e) {
            throw new ConnectException("Failed to connect to " + this.route.getSocketAddress());
        }
    }

    private void connectTls(int i, int i2, ConnectionSpecSelector connectionSpecSelector) throws IOException {
        Throwable th;
        Socket socket;
        Throwable th2;
        String str = null;
        if (this.route.requiresTunnel()) {
            createTunnel(i, i2);
        }
        Address address = this.route.getAddress();
        try {
            Socket socket2 = (SSLSocket) address.getSslSocketFactory().createSocket(this.rawSocket, address.getUriHost(), address.getUriPort(), true);
            try {
                ConnectionSpec configureSecureSocket = connectionSpecSelector.configureSecureSocket(socket2);
                if (configureSecureSocket.supportsTlsExtensions()) {
                    Platform.get().configureTlsExtensions(socket2, address.getUriHost(), address.getProtocols());
                }
                socket2.startHandshake();
                Handshake handshake = Handshake.get(socket2.getSession());
                if (address.getHostnameVerifier().verify(address.getUriHost(), socket2.getSession())) {
                    if (address.getCertificatePinner() != CertificatePinner.DEFAULT) {
                        address.getCertificatePinner().check(address.getUriHost(), new CertificateChainCleaner(trustRootIndex(address.getSslSocketFactory())).clean(handshake.peerCertificates()));
                    }
                    if (configureSecureSocket.supportsTlsExtensions()) {
                        str = Platform.get().getSelectedProtocol(socket2);
                    }
                    this.socket = socket2;
                    this.source = q.a(q.b(this.socket));
                    this.sink = q.a(q.a(this.socket));
                    this.handshake = handshake;
                    this.protocol = str != null ? Protocol.get(str) : Protocol.HTTP_1_1;
                    if (socket2 != null) {
                        Platform.get().afterHandshake(socket2);
                        return;
                    }
                    return;
                }
                X509Certificate x509Certificate = (X509Certificate) handshake.peerCertificates().get(0);
                throw new SSLPeerUnverifiedException("Hostname " + address.getUriHost() + " not verified:" + "\n    certificate: " + CertificatePinner.pin(x509Certificate) + "\n    DN: " + x509Certificate.getSubjectDN().getName() + "\n    subjectAltNames: " + OkHostnameVerifier.allSubjectAltNames(x509Certificate));
            } catch (Throwable e) {
                th = e;
                socket = socket2;
                th2 = th;
                try {
                    if (Util.isAndroidGetsocknameError(th2)) {
                        throw th2;
                    } else {
                        throw new IOException(th2);
                    }
                } catch (Throwable th3) {
                    th2 = th3;
                }
            } catch (Throwable e2) {
                th = e2;
                socket = socket2;
                th2 = th;
                if (socket != null) {
                    Platform.get().afterHandshake(socket);
                }
                Util.closeQuietly(socket);
                throw th2;
            }
        } catch (AssertionError e3) {
            th2 = e3;
            if (Util.isAndroidGetsocknameError(th2)) {
                throw th2;
            } else {
                throw new IOException(th2);
            }
        }
    }

    private static synchronized TrustRootIndex trustRootIndex(SSLSocketFactory sSLSocketFactory) {
        TrustRootIndex trustRootIndex;
        synchronized (RealConnection.class) {
            if (sSLSocketFactory != lastSslSocketFactory) {
                lastTrustRootIndex = Platform.get().trustRootIndex(Platform.get().trustManager(sSLSocketFactory));
                lastSslSocketFactory = sSLSocketFactory;
            }
            trustRootIndex = lastTrustRootIndex;
        }
        return trustRootIndex;
    }

    private void createTunnel(int i, int i2) throws IOException {
        Request createTunnelRequest = createTunnelRequest();
        HttpUrl httpUrl = createTunnelRequest.httpUrl();
        String str = "CONNECT " + httpUrl.host() + ":" + httpUrl.port() + " HTTP/1.1";
        do {
            Http1xStream http1xStream = new Http1xStream(null, this.source, this.sink);
            this.source.timeout().timeout((long) i, TimeUnit.MILLISECONDS);
            this.sink.timeout().timeout((long) i2, TimeUnit.MILLISECONDS);
            http1xStream.writeRequest(createTunnelRequest.headers(), str);
            http1xStream.finishRequest();
            Response build = http1xStream.readResponse().request(createTunnelRequest).build();
            long contentLength = OkHeaders.contentLength(build);
            if (contentLength == -1) {
                contentLength = 0;
            }
            ab newFixedLengthSource = http1xStream.newFixedLengthSource(contentLength);
            Util.skipAll(newFixedLengthSource, Integer.MAX_VALUE, TimeUnit.MILLISECONDS);
            newFixedLengthSource.close();
            switch (build.code()) {
                case Callback.DEFAULT_DRAG_ANIMATION_DURATION /*200*/:
                    if (!this.source.b().f() || !this.sink.b().f()) {
                        throw new IOException("TLS tunnel buffered too many bytes!");
                    }
                    return;
                case 407:
                    createTunnelRequest = OkHeaders.processAuthHeader(this.route.getAddress().getAuthenticator(), build, this.route.getProxy());
                    break;
                default:
                    throw new IOException("Unexpected response code for CONNECT: " + build.code());
            }
        } while (createTunnelRequest != null);
        throw new IOException("Failed to authenticate with proxy");
    }

    private Request createTunnelRequest() throws IOException {
        return new Request.Builder().url(this.route.getAddress().url()).header("Host", Util.hostHeader(this.route.getAddress().url())).header("Proxy-Connection", "Keep-Alive").header("User-Agent", Version.userAgent()).build();
    }

    boolean isConnected() {
        return this.protocol != null;
    }

    public Route getRoute() {
        return this.route;
    }

    public void cancel() {
        Util.closeQuietly(this.rawSocket);
    }

    public Socket getSocket() {
        return this.socket;
    }

    public int allocationLimit() {
        FramedConnection framedConnection = this.framedConnection;
        return framedConnection != null ? framedConnection.maxConcurrentStreams() : 1;
    }

    public boolean isHealthy(boolean z) {
        if (this.socket.isClosed() || this.socket.isInputShutdown() || this.socket.isOutputShutdown()) {
            return false;
        }
        if (this.framedConnection != null || !z) {
            return true;
        }
        int soTimeout;
        try {
            soTimeout = this.socket.getSoTimeout();
            this.socket.setSoTimeout(1);
            if (this.source.f()) {
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

    public Handshake getHandshake() {
        return this.handshake;
    }

    public boolean isMultiplexed() {
        return this.framedConnection != null;
    }

    public Protocol getProtocol() {
        return this.protocol != null ? this.protocol : Protocol.HTTP_1_1;
    }

    public String toString() {
        return "Connection{" + this.route.getAddress().url().host() + ":" + this.route.getAddress().url().port() + ", proxy=" + this.route.getProxy() + " hostAddress=" + this.route.getSocketAddress() + " cipherSuite=" + (this.handshake != null ? this.handshake.cipherSuite() : "none") + " protocol=" + this.protocol + '}';
    }
}
