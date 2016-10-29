package com.squareup.okhttp.v_1_5_1.internal.http;

import android.support.v7.widget.helper.ItemTouchHelper.Callback;
import com.squareup.okhttp.v_1_5_1.Address;
import com.squareup.okhttp.v_1_5_1.Connection;
import com.squareup.okhttp.v_1_5_1.OkHttpClient;
import com.squareup.okhttp.v_1_5_1.OkResponseCache;
import com.squareup.okhttp.v_1_5_1.Protocol;
import com.squareup.okhttp.v_1_5_1.ResponseSource;
import com.squareup.okhttp.v_1_5_1.Route;
import com.squareup.okhttp.v_1_5_1.TunnelRequest;
import com.squareup.okhttp.v_1_5_1.internal.Dns;
import com.squareup.okhttp.v_1_5_1.internal.Util;
import com.squareup.okhttp.v_1_5_1.internal.http.CacheStrategy.Factory;
import com.squareup.okhttp.v_1_5_1.internal.http.Request.Builder;
import com.squareup.okhttp.v_1_5_1.internal.okio.BufferedSink;
import com.squareup.okhttp.v_1_5_1.internal.okio.GzipSource;
import com.squareup.okhttp.v_1_5_1.internal.okio.Okio;
import com.squareup.okhttp.v_1_5_1.internal.okio.Sink;
import com.squareup.okhttp.v_1_5_1.internal.okio.Source;
import java.io.IOException;
import java.io.InputStream;
import java.net.CacheRequest;
import java.net.CookieHandler;
import java.net.ProtocolException;
import java.net.URL;
import java.net.UnknownHostException;
import java.security.cert.CertificateException;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLSocketFactory;

/* compiled from: Twttr */
public class HttpEngine {
    public final boolean bufferRequestBody;
    private BufferedSink bufferedRequestBody;
    private CacheRequest cacheRequest;
    final OkHttpClient client;
    private Connection connection;
    private Request originalRequest;
    private Request request;
    private Sink requestBodyOut;
    private Response response;
    private Source responseBody;
    private InputStream responseBodyBytes;
    private ResponseSource responseSource;
    private Source responseTransferSource;
    private Route route;
    private RouteSelector routeSelector;
    long sentRequestMillis;
    private boolean transparentGzip;
    private Transport transport;
    private Response validatingResponse;

    public HttpEngine(OkHttpClient okHttpClient, Request request, boolean z, Connection connection, RouteSelector routeSelector, RetryableSink retryableSink) {
        this.sentRequestMillis = -1;
        this.client = okHttpClient;
        this.originalRequest = request;
        this.request = request;
        this.bufferRequestBody = z;
        this.connection = connection;
        this.routeSelector = routeSelector;
        this.route = connection != null ? connection.getRoute() : null;
        this.requestBodyOut = retryableSink;
    }

    public final void sendRequest() throws IOException {
        if (this.responseSource == null) {
            if (this.transport != null) {
                throw new IllegalStateException();
            }
            prepareRawRequestHeaders();
            OkResponseCache okResponseCache = this.client.getOkResponseCache();
            Response response = okResponseCache != null ? okResponseCache.get(this.request) : null;
            CacheStrategy cacheStrategy = new Factory(System.currentTimeMillis(), this.request, response).get();
            this.responseSource = cacheStrategy.source;
            this.request = cacheStrategy.request;
            if (okResponseCache != null) {
                okResponseCache.trackResponse(this.responseSource);
            }
            if (this.responseSource != ResponseSource.NETWORK) {
                this.validatingResponse = cacheStrategy.response;
            }
            if (!(response == null || this.responseSource.usesCache())) {
                Util.closeQuietly(response.body());
            }
            if (this.responseSource.requiresConnection()) {
                if (this.connection == null) {
                    connect();
                }
                this.transport = (Transport) this.connection.newTransport(this);
                if (hasRequestBody() && this.requestBodyOut == null) {
                    this.requestBodyOut = this.transport.createRequestBody(this.request);
                    return;
                }
                return;
            }
            if (this.connection != null) {
                this.client.getConnectionPool().recycle(this.connection);
                this.connection = null;
            }
            this.response = this.validatingResponse;
            if (this.validatingResponse.body() != null) {
                initContentStream(this.validatingResponse.body().source());
            }
        }
    }

    private Response cacheableResponse() {
        return this.response.newBuilder().body(null).build();
    }

    private Connection selectConnection(RouteSelector routeSelector) throws IOException {
        Connection next = routeSelector.next(this.request.method());
        if (!next.isConnected()) {
            next.connect(this.client.getConnectTimeout(), this.client.getReadTimeout(), getTunnelConfig());
            if (next.isSpdy()) {
                this.client.getConnectionPool().share(next);
            }
            this.client.getRoutesDatabase().connected(next.getRoute());
        } else if (!next.isSpdy()) {
            next.updateReadTimeout(this.client.getReadTimeout());
        }
        return next;
    }

    private void connect() throws IOException {
        Address address;
        if (this.connection != null) {
            throw new IllegalStateException();
        }
        if (this.routeSelector == null) {
            address = getAddress();
            this.routeSelector = new RouteSelector(address, this.request.uri(), this.client.getProxySelector(), this.client.getConnectionPool(), Dns.DEFAULT, this.client.getRoutesDatabase());
        } else {
            address = this.routeSelector.getAddress();
        }
        if (address.getProtocols().contains(Protocol.SPDY_3)) {
            synchronized (this.client.getConnectLock(address)) {
                try {
                    this.connection = selectConnection(this.routeSelector);
                    this.client.resetConnectLock(address);
                } catch (Throwable th) {
                    this.client.resetConnectLock(address);
                }
            }
        } else {
            this.connection = selectConnection(this.routeSelector);
        }
        this.route = this.connection.getRoute();
    }

    private Address getAddress() throws UnknownHostException {
        HostnameVerifier hostnameVerifier = null;
        String protocol = this.request.url().getProtocol();
        String host = this.request.url().getHost();
        if (host == null || host.length() == 0) {
            throw new UnknownHostException(this.request.url().toString());
        }
        SSLSocketFactory sslSocketFactory;
        if (this.request.isHttps()) {
            sslSocketFactory = this.client.getSslSocketFactory();
            hostnameVerifier = this.client.getHostnameVerifier();
        } else {
            sslSocketFactory = null;
        }
        int effectivePort = Util.getEffectivePort(this.request.url());
        if (this.client.getProtocols().contains(Protocol.SPDY_3)) {
            Origin aliasForOrigin = this.client.getAliasForOrigin(new Origin(protocol, host, effectivePort));
            if (aliasForOrigin != null) {
                host = aliasForOrigin.getHostname();
                effectivePort = aliasForOrigin.getPort();
            }
        }
        return new Address(host, effectivePort, sslSocketFactory, hostnameVerifier, this.client.getAuthenticator(), this.client.getProxy(), this.client.getProtocols());
    }

    public void writingRequestHeaders() {
        if (this.sentRequestMillis != -1) {
            throw new IllegalStateException();
        }
        this.sentRequestMillis = System.currentTimeMillis();
    }

    boolean hasRequestBody() {
        return HttpMethod.hasRequestBody(this.request.method());
    }

    public final Sink getRequestBody() {
        if (this.responseSource != null) {
            return this.requestBodyOut;
        }
        throw new IllegalStateException();
    }

    public final BufferedSink getBufferedRequestBody() {
        BufferedSink bufferedSink = this.bufferedRequestBody;
        if (bufferedSink != null) {
            return bufferedSink;
        }
        Sink requestBody = getRequestBody();
        if (requestBody == null) {
            return null;
        }
        bufferedSink = Okio.buffer(requestBody);
        this.bufferedRequestBody = bufferedSink;
        return bufferedSink;
    }

    public final boolean hasResponse() {
        return this.response != null;
    }

    public final ResponseSource responseSource() {
        return this.responseSource;
    }

    public final Request getRequest() {
        return this.request;
    }

    public final Response getResponse() {
        if (this.response != null) {
            return this.response;
        }
        throw new IllegalStateException();
    }

    public final Source getResponseBody() {
        if (this.response != null) {
            return this.responseBody;
        }
        throw new IllegalStateException();
    }

    public final InputStream getResponseBodyBytes() {
        InputStream inputStream = this.responseBodyBytes;
        if (inputStream != null) {
            return inputStream;
        }
        inputStream = Okio.buffer(getResponseBody()).inputStream();
        this.responseBodyBytes = inputStream;
        return inputStream;
    }

    public final Connection getConnection() {
        return this.connection;
    }

    public HttpEngine recover(IOException iOException) {
        if (!(this.routeSelector == null || this.connection == null)) {
            this.routeSelector.connectFailed(this.connection, iOException);
        }
        Object obj = (this.requestBodyOut == null || (this.requestBodyOut instanceof RetryableSink)) ? 1 : null;
        if ((this.routeSelector == null && this.connection == null) || ((this.routeSelector != null && !this.routeSelector.hasNext()) || !isRecoverable(iOException) || obj == null)) {
            return null;
        }
        return new HttpEngine(this.client, this.originalRequest, this.bufferRequestBody, close(), this.routeSelector, (RetryableSink) this.requestBodyOut);
    }

    private boolean isRecoverable(IOException iOException) {
        boolean z;
        if ((iOException instanceof SSLHandshakeException) && (iOException.getCause() instanceof CertificateException)) {
            z = true;
        } else {
            z = false;
        }
        return (z || (iOException instanceof ProtocolException)) ? false : true;
    }

    public Route getRoute() {
        return this.route;
    }

    private void maybeCache() throws IOException {
        OkResponseCache okResponseCache = this.client.getOkResponseCache();
        if (okResponseCache != null) {
            if (CacheStrategy.isCacheable(this.response, this.request)) {
                this.cacheRequest = okResponseCache.put(cacheableResponse());
            } else {
                okResponseCache.maybeRemove(this.request);
            }
        }
    }

    public final void releaseConnection() throws IOException {
        if (!(this.transport == null || this.connection == null)) {
            this.transport.releaseConnectionOnIdle();
        }
        this.connection = null;
    }

    public final Connection close() {
        if (this.bufferedRequestBody != null) {
            Util.closeQuietly(this.bufferedRequestBody);
        } else if (this.requestBodyOut != null) {
            Util.closeQuietly(this.requestBodyOut);
        }
        if (this.responseBody == null) {
            Util.closeQuietly(this.connection);
            this.connection = null;
            return null;
        }
        Util.closeQuietly(this.responseBody);
        Util.closeQuietly(this.responseBodyBytes);
        if (this.transport == null || this.transport.canReuseConnection()) {
            Connection connection = this.connection;
            this.connection = null;
            return connection;
        }
        Util.closeQuietly(this.connection);
        this.connection = null;
        return null;
    }

    private void initContentStream(Source source) throws IOException {
        this.responseTransferSource = source;
        if (this.transparentGzip && "gzip".equalsIgnoreCase(this.response.header("Content-Encoding"))) {
            this.response = this.response.newBuilder().removeHeader("Content-Encoding").removeHeader("Content-Length").build();
            this.responseBody = new GzipSource(source);
            return;
        }
        this.responseBody = source;
    }

    public final boolean hasResponseBody() {
        if (this.request.method().equals("HEAD")) {
            return false;
        }
        int code = this.response.code();
        if ((code < 100 || code >= Callback.DEFAULT_DRAG_ANIMATION_DURATION) && code != 204 && code != 304) {
            return true;
        }
        if (OkHeaders.contentLength(this.response) != -1 || "chunked".equalsIgnoreCase(this.response.header("Transfer-Encoding"))) {
            return true;
        }
        return false;
    }

    private void prepareRawRequestHeaders() throws IOException {
        Builder newBuilder = this.request.newBuilder();
        if (this.request.getUserAgent() == null) {
            newBuilder.setUserAgent(getDefaultUserAgent());
        }
        if (this.request.header("Host") == null) {
            newBuilder.header("Host", hostHeader(this.request.url()));
        }
        if ((this.connection == null || this.connection.getHttpMinorVersion() != 0) && this.request.header("Connection") == null) {
            newBuilder.header("Connection", "Keep-Alive");
        }
        if (this.request.header("Accept-Encoding") == null) {
            this.transparentGzip = true;
            newBuilder.header("Accept-Encoding", "gzip");
        }
        if (hasRequestBody() && this.request.header("Content-Type") == null) {
            newBuilder.header("Content-Type", "application/x-www-form-urlencoded");
        }
        CookieHandler cookieHandler = this.client.getCookieHandler();
        if (cookieHandler != null) {
            OkHeaders.addCookies(newBuilder, cookieHandler.get(this.request.uri(), OkHeaders.toMultimap(newBuilder.build().headers(), null)));
        }
        this.request = newBuilder.build();
    }

    public static String getDefaultUserAgent() {
        String property = System.getProperty("http.agent");
        return property != null ? property : "Java" + System.getProperty("java.version");
    }

    public static String hostHeader(URL url) {
        return Util.getEffectivePort(url) != Util.getDefaultPort(url.getProtocol()) ? url.getHost() + ":" + url.getPort() : url.getHost();
    }

    public final void readResponse() throws IOException {
        if (this.response == null) {
            if (this.responseSource == null) {
                throw new IllegalStateException("call sendRequest() first!");
            } else if (this.responseSource.requiresConnection()) {
                if (this.bufferedRequestBody != null && this.bufferedRequestBody.buffer().size() > 0) {
                    this.bufferedRequestBody.flush();
                }
                if (this.sentRequestMillis == -1) {
                    if (OkHeaders.contentLength(this.request) == -1 && (this.requestBodyOut instanceof RetryableSink)) {
                        this.request = this.request.newBuilder().header("Content-Length", Long.toString(((RetryableSink) this.requestBodyOut).contentLength())).build();
                    }
                    this.transport.writeRequestHeaders(this.request);
                }
                if (this.requestBodyOut != null) {
                    if (this.bufferedRequestBody != null) {
                        this.bufferedRequestBody.close();
                    } else {
                        this.requestBodyOut.close();
                    }
                    if (this.requestBodyOut instanceof RetryableSink) {
                        this.transport.writeRequestBody((RetryableSink) this.requestBodyOut);
                    }
                }
                this.transport.flushRequest();
                this.response = this.transport.readResponseHeaders().request(this.request).handshake(this.connection.getHandshake()).header(OkHeaders.SENT_MILLIS, Long.toString(this.sentRequestMillis)).header(OkHeaders.RECEIVED_MILLIS, Long.toString(System.currentTimeMillis())).setResponseSource(this.responseSource).build();
                this.connection.setHttpMinorVersion(this.response.httpMinorVersion());
                receiveHeaders(this.response.headers());
                if (this.responseSource == ResponseSource.CONDITIONAL_CACHE) {
                    if (this.validatingResponse.validate(this.response)) {
                        this.transport.emptyTransferStream();
                        releaseConnection();
                        this.response = combine(this.validatingResponse, this.response);
                        OkResponseCache okResponseCache = this.client.getOkResponseCache();
                        okResponseCache.trackConditionalCacheHit();
                        okResponseCache.update(this.validatingResponse, cacheableResponse());
                        if (this.validatingResponse.body() != null) {
                            initContentStream(this.validatingResponse.body().source());
                            return;
                        }
                        return;
                    }
                    Util.closeQuietly(this.validatingResponse.body());
                }
                if (hasResponseBody()) {
                    maybeCache();
                    initContentStream(this.transport.getTransferStream(this.cacheRequest));
                    return;
                }
                this.responseTransferSource = this.transport.getTransferStream(this.cacheRequest);
                this.responseBody = this.responseTransferSource;
            }
        }
    }

    private static Response combine(Response response, Response response2) throws IOException {
        int i = 0;
        Headers.Builder builder = new Headers.Builder();
        Headers headers = response.headers();
        for (int i2 = 0; i2 < headers.size(); i2++) {
            String name = headers.name(i2);
            String value = headers.value(i2);
            if (!("Warning".equals(name) && value.startsWith("1")) && (!isEndToEnd(name) || response2.header(name) == null)) {
                builder.add(name, value);
            }
        }
        Headers headers2 = response2.headers();
        while (i < headers2.size()) {
            String name2 = headers2.name(i);
            if (isEndToEnd(name2)) {
                builder.add(name2, headers2.value(i));
            }
            i++;
        }
        return response.newBuilder().headers(builder.build()).build();
    }

    private static boolean isEndToEnd(String str) {
        return ("Connection".equalsIgnoreCase(str) || "Keep-Alive".equalsIgnoreCase(str) || "Proxy-Authenticate".equalsIgnoreCase(str) || "Proxy-Authorization".equalsIgnoreCase(str) || "TE".equalsIgnoreCase(str) || "Trailers".equalsIgnoreCase(str) || "Transfer-Encoding".equalsIgnoreCase(str) || "Upgrade".equalsIgnoreCase(str)) ? false : true;
    }

    private TunnelRequest getTunnelConfig() {
        if (!this.request.isHttps()) {
            return null;
        }
        String userAgent = this.request.getUserAgent();
        if (userAgent == null) {
            userAgent = getDefaultUserAgent();
        }
        URL url = this.request.url();
        if (this.client.getProtocols().contains(Protocol.SPDY_3)) {
            Origin aliasForOrigin = this.client.getAliasForOrigin(new Origin(url.getProtocol(), url.getHost(), Util.getEffectivePort(url)));
            if (aliasForOrigin != null) {
                return new TunnelRequest(aliasForOrigin.getHostname(), aliasForOrigin.getPort(), userAgent, this.request.getProxyAuthorization());
            }
        }
        return new TunnelRequest(url.getHost(), Util.getEffectivePort(url), userAgent, this.request.getProxyAuthorization());
    }

    public void receiveHeaders(Headers headers) throws IOException {
        CookieHandler cookieHandler = this.client.getCookieHandler();
        if (cookieHandler != null) {
            cookieHandler.put(this.request.uri(), OkHeaders.toMultimap(headers, null));
        }
    }
}
