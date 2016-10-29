package com.squareup.okhttp.internal.http;

import android.support.v7.widget.helper.ItemTouchHelper.Callback;
import com.squareup.okhttp.Address;
import com.squareup.okhttp.CertificatePinner;
import com.squareup.okhttp.Connection;
import com.squareup.okhttp.Headers;
import com.squareup.okhttp.HttpUrl;
import com.squareup.okhttp.Interceptor;
import com.squareup.okhttp.Interceptor.Chain;
import com.squareup.okhttp.MediaType;
import com.squareup.okhttp.OkHttpClient;
import com.squareup.okhttp.Protocol;
import com.squareup.okhttp.Request;
import com.squareup.okhttp.Response;
import com.squareup.okhttp.Response.Builder;
import com.squareup.okhttp.ResponseBody;
import com.squareup.okhttp.internal.Internal;
import com.squareup.okhttp.internal.InternalCache;
import com.squareup.okhttp.internal.Util;
import com.squareup.okhttp.internal.Version;
import com.squareup.okhttp.internal.http.CacheStrategy.Factory;
import java.io.IOException;
import java.net.CookieHandler;
import java.net.ProtocolException;
import java.util.Date;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;
import okio.aa;
import okio.ab;
import okio.ac;
import okio.f;
import okio.i;
import okio.j;
import okio.o;
import okio.q;

/* compiled from: Twttr */
public final class HttpEngine {
    private static final ResponseBody EMPTY_BODY;
    public static final int MAX_FOLLOW_UPS = 20;
    public final boolean bufferRequestBody;
    private i bufferedRequestBody;
    private Response cacheResponse;
    private CacheStrategy cacheStrategy;
    private final boolean callerWritesRequestBody;
    final OkHttpClient client;
    private final boolean forWebSocket;
    private HttpStream httpStream;
    private Request networkRequest;
    private final Response priorResponse;
    private aa requestBodyOut;
    long sentRequestMillis;
    private CacheRequest storeRequest;
    public final StreamAllocation streamAllocation;
    private boolean transparentGzip;
    private final Request userRequest;
    private Response userResponse;

    /* compiled from: Twttr */
    /* renamed from: com.squareup.okhttp.internal.http.HttpEngine.2 */
    class AnonymousClass2 implements ab {
        boolean cacheRequestClosed;
        final /* synthetic */ i val$cacheBody;
        final /* synthetic */ CacheRequest val$cacheRequest;
        final /* synthetic */ j val$source;

        AnonymousClass2(j jVar, CacheRequest cacheRequest, i iVar) {
            this.val$source = jVar;
            this.val$cacheRequest = cacheRequest;
            this.val$cacheBody = iVar;
        }

        public long read(f fVar, long j) throws IOException {
            try {
                long read = this.val$source.read(fVar, j);
                if (read == -1) {
                    if (!this.cacheRequestClosed) {
                        this.cacheRequestClosed = true;
                        this.val$cacheBody.close();
                    }
                    return -1;
                }
                fVar.a(this.val$cacheBody.b(), fVar.a() - read, read);
                this.val$cacheBody.x();
                return read;
            } catch (IOException e) {
                if (!this.cacheRequestClosed) {
                    this.cacheRequestClosed = true;
                    this.val$cacheRequest.abort();
                }
                throw e;
            }
        }

        public ac timeout() {
            return this.val$source.timeout();
        }

        public void close() throws IOException {
            if (!(this.cacheRequestClosed || Util.discard(this, 100, TimeUnit.MILLISECONDS))) {
                this.cacheRequestClosed = true;
                this.val$cacheRequest.abort();
            }
            this.val$source.close();
        }
    }

    /* compiled from: Twttr */
    class NetworkInterceptorChain implements Chain {
        private int calls;
        private final int index;
        private final Request request;

        NetworkInterceptorChain(int i, Request request) {
            this.index = i;
            this.request = request;
        }

        public Connection connection() {
            return HttpEngine.this.streamAllocation.connection();
        }

        public Request request() {
            return this.request;
        }

        public Response proceed(Request request) throws IOException {
            Interceptor interceptor;
            this.calls++;
            if (this.index > 0) {
                interceptor = (Interceptor) HttpEngine.this.client.networkInterceptors().get(this.index - 1);
                Address address = connection().getRoute().getAddress();
                if (!request.httpUrl().host().equals(address.getUriHost()) || request.httpUrl().port() != address.getUriPort()) {
                    throw new IllegalStateException("network interceptor " + interceptor + " must retain the same host and port");
                } else if (this.calls > 1) {
                    throw new IllegalStateException("network interceptor " + interceptor + " must call proceed() exactly once");
                }
            }
            if (this.index < HttpEngine.this.client.networkInterceptors().size()) {
                Object networkInterceptorChain = new NetworkInterceptorChain(this.index + 1, request);
                interceptor = (Interceptor) HttpEngine.this.client.networkInterceptors().get(this.index);
                Response intercept = interceptor.intercept(networkInterceptorChain);
                if (networkInterceptorChain.calls != 1) {
                    throw new IllegalStateException("network interceptor " + interceptor + " must call proceed() exactly once");
                } else if (intercept != null) {
                    return intercept;
                } else {
                    throw new NullPointerException("network interceptor " + interceptor + " returned null");
                }
            }
            HttpEngine.this.httpStream.writeRequestHeaders(request);
            HttpEngine.this.networkRequest = request;
            if (HttpEngine.this.permitsRequestBody(request) && request.body() != null) {
                i a = q.a(HttpEngine.this.httpStream.createRequestBody(request, request.body().contentLength()));
                request.body().writeTo(a);
                a.close();
            }
            Response access$200 = HttpEngine.this.readNetworkResponse();
            int code = access$200.code();
            if ((code != 204 && code != 205) || access$200.body().contentLength() <= 0) {
                return access$200;
            }
            throw new ProtocolException("HTTP " + code + " had non-zero Content-Length: " + access$200.body().contentLength());
        }
    }

    static {
        EMPTY_BODY = new ResponseBody() {
            public MediaType contentType() {
                return null;
            }

            public long contentLength() {
                return 0;
            }

            public j source() {
                return new f();
            }
        };
    }

    public HttpEngine(OkHttpClient okHttpClient, Request request, boolean z, boolean z2, boolean z3, StreamAllocation streamAllocation, RetryableSink retryableSink, Response response) {
        this.sentRequestMillis = -1;
        this.client = okHttpClient;
        this.userRequest = request;
        this.bufferRequestBody = z;
        this.callerWritesRequestBody = z2;
        this.forWebSocket = z3;
        if (streamAllocation == null) {
            streamAllocation = new StreamAllocation(okHttpClient.getConnectionPool(), createAddress(okHttpClient, request));
        }
        this.streamAllocation = streamAllocation;
        this.requestBodyOut = retryableSink;
        this.priorResponse = response;
    }

    public void sendRequest() throws RequestException, RouteException, IOException {
        if (this.cacheStrategy == null) {
            if (this.httpStream != null) {
                throw new IllegalStateException();
            }
            Request networkRequest = networkRequest(this.userRequest);
            InternalCache internalCache = Internal.instance.internalCache(this.client);
            Response response = internalCache != null ? internalCache.get(networkRequest) : null;
            this.cacheStrategy = new Factory(System.currentTimeMillis(), networkRequest, response).get();
            this.networkRequest = this.cacheStrategy.networkRequest;
            this.cacheResponse = this.cacheStrategy.cacheResponse;
            if (internalCache != null) {
                internalCache.trackResponse(this.cacheStrategy);
            }
            if (response != null && this.cacheResponse == null) {
                Util.closeQuietly(response.body());
            }
            if (this.networkRequest != null) {
                this.httpStream = connect();
                this.httpStream.setHttpEngine(this);
                if (this.callerWritesRequestBody && permitsRequestBody(this.networkRequest) && this.requestBodyOut == null) {
                    long contentLength = OkHeaders.contentLength(networkRequest);
                    if (!this.bufferRequestBody) {
                        this.httpStream.writeRequestHeaders(this.networkRequest);
                        this.requestBodyOut = this.httpStream.createRequestBody(this.networkRequest, contentLength);
                        return;
                    } else if (contentLength > 2147483647L) {
                        throw new IllegalStateException("Use setFixedLengthStreamingMode() or setChunkedStreamingMode() for requests larger than 2 GiB.");
                    } else if (contentLength != -1) {
                        this.httpStream.writeRequestHeaders(this.networkRequest);
                        this.requestBodyOut = new RetryableSink((int) contentLength);
                        return;
                    } else {
                        this.requestBodyOut = new RetryableSink();
                        return;
                    }
                }
                return;
            }
            if (this.cacheResponse != null) {
                this.userResponse = this.cacheResponse.newBuilder().request(this.userRequest).priorResponse(stripBody(this.priorResponse)).cacheResponse(stripBody(this.cacheResponse)).build();
            } else {
                this.userResponse = new Builder().request(this.userRequest).priorResponse(stripBody(this.priorResponse)).protocol(Protocol.HTTP_1_1).code(504).message("Unsatisfiable Request (only-if-cached)").body(EMPTY_BODY).build();
            }
            this.userResponse = unzip(this.userResponse);
        }
    }

    private HttpStream connect() throws RouteException, RequestException, IOException {
        return this.streamAllocation.newStream(this.client.getConnectTimeout(), this.client.getReadTimeout(), this.client.getWriteTimeout(), this.client.getRetryOnConnectionFailure(), !this.networkRequest.method().equals("GET"));
    }

    private static Response stripBody(Response response) {
        return (response == null || response.body() == null) ? response : response.newBuilder().body(null).build();
    }

    public void writingRequestHeaders() {
        if (this.sentRequestMillis != -1) {
            throw new IllegalStateException();
        }
        this.sentRequestMillis = System.currentTimeMillis();
    }

    boolean permitsRequestBody(Request request) {
        return HttpMethod.permitsRequestBody(request.method());
    }

    public aa getRequestBody() {
        if (this.cacheStrategy != null) {
            return this.requestBodyOut;
        }
        throw new IllegalStateException();
    }

    public i getBufferedRequestBody() {
        i iVar = this.bufferedRequestBody;
        if (iVar != null) {
            return iVar;
        }
        aa requestBody = getRequestBody();
        if (requestBody == null) {
            return null;
        }
        iVar = q.a(requestBody);
        this.bufferedRequestBody = iVar;
        return iVar;
    }

    public boolean hasResponse() {
        return this.userResponse != null;
    }

    public Request getRequest() {
        return this.userRequest;
    }

    public Response getResponse() {
        if (this.userResponse != null) {
            return this.userResponse;
        }
        throw new IllegalStateException();
    }

    public Connection getConnection() {
        return this.streamAllocation.connection();
    }

    public HttpEngine recover(RouteException routeException) {
        if (!this.streamAllocation.recover(routeException) || !this.client.getRetryOnConnectionFailure()) {
            return null;
        }
        return new HttpEngine(this.client, this.userRequest, this.bufferRequestBody, this.callerWritesRequestBody, this.forWebSocket, close(), (RetryableSink) this.requestBodyOut, this.priorResponse);
    }

    public HttpEngine recover(IOException iOException, aa aaVar) {
        if (!this.streamAllocation.recover(iOException, aaVar) || !this.client.getRetryOnConnectionFailure()) {
            return null;
        }
        return new HttpEngine(this.client, this.userRequest, this.bufferRequestBody, this.callerWritesRequestBody, this.forWebSocket, close(), (RetryableSink) aaVar, this.priorResponse);
    }

    public HttpEngine recover(IOException iOException) {
        return recover(iOException, this.requestBodyOut);
    }

    private void maybeCache() throws IOException {
        InternalCache internalCache = Internal.instance.internalCache(this.client);
        if (internalCache != null) {
            if (CacheStrategy.isCacheable(this.userResponse, this.networkRequest)) {
                this.storeRequest = internalCache.put(stripBody(this.userResponse));
            } else if (HttpMethod.invalidatesCache(this.networkRequest.method())) {
                try {
                    internalCache.remove(this.networkRequest);
                } catch (IOException e) {
                }
            }
        }
    }

    public void releaseStreamAllocation() throws IOException {
        this.streamAllocation.release();
    }

    public void cancel() {
        this.streamAllocation.cancel();
    }

    public StreamAllocation close() {
        if (this.bufferedRequestBody != null) {
            Util.closeQuietly(this.bufferedRequestBody);
        } else if (this.requestBodyOut != null) {
            Util.closeQuietly(this.requestBodyOut);
        }
        if (this.userResponse != null) {
            Util.closeQuietly(this.userResponse.body());
        } else {
            this.streamAllocation.connectionFailed();
        }
        return this.streamAllocation;
    }

    private Response unzip(Response response) throws IOException {
        if (!this.transparentGzip || !"gzip".equalsIgnoreCase(this.userResponse.header("Content-Encoding")) || response.body() == null) {
            return response;
        }
        o oVar = new o(response.body().source());
        Headers build = response.headers().newBuilder().removeAll("Content-Encoding").removeAll("Content-Length").build();
        return response.newBuilder().headers(build).body(new RealResponseBody(build, q.a(oVar))).build();
    }

    public static boolean hasBody(Response response) {
        if (response.request().method().equals("HEAD")) {
            return false;
        }
        int code = response.code();
        if ((code < 100 || code >= Callback.DEFAULT_DRAG_ANIMATION_DURATION) && code != 204 && code != 304) {
            return true;
        }
        if (OkHeaders.contentLength(response) != -1 || "chunked".equalsIgnoreCase(response.header("Transfer-Encoding"))) {
            return true;
        }
        return false;
    }

    private Request networkRequest(Request request) throws IOException {
        Request.Builder newBuilder = request.newBuilder();
        if (request.header("Host") == null) {
            newBuilder.header("Host", Util.hostHeader(request.httpUrl()));
        }
        if (request.header("Connection") == null) {
            newBuilder.header("Connection", "Keep-Alive");
        }
        if (request.header("Accept-Encoding") == null) {
            this.transparentGzip = true;
            newBuilder.header("Accept-Encoding", "gzip");
        }
        CookieHandler cookieHandler = this.client.getCookieHandler();
        if (cookieHandler != null) {
            OkHeaders.addCookies(newBuilder, cookieHandler.get(request.uri(), OkHeaders.toMultimap(newBuilder.build().headers(), null)));
        }
        if (request.header("User-Agent") == null) {
            newBuilder.header("User-Agent", Version.userAgent());
        }
        return newBuilder.build();
    }

    public void readResponse() throws IOException {
        if (this.userResponse == null) {
            if (this.networkRequest == null && this.cacheResponse == null) {
                throw new IllegalStateException("call sendRequest() first!");
            } else if (this.networkRequest != null) {
                Response readNetworkResponse;
                if (this.forWebSocket) {
                    this.httpStream.writeRequestHeaders(this.networkRequest);
                    readNetworkResponse = readNetworkResponse();
                } else if (this.callerWritesRequestBody) {
                    if (this.bufferedRequestBody != null && this.bufferedRequestBody.b().a() > 0) {
                        this.bufferedRequestBody.e();
                    }
                    if (this.sentRequestMillis == -1) {
                        if (OkHeaders.contentLength(this.networkRequest) == -1 && (this.requestBodyOut instanceof RetryableSink)) {
                            this.networkRequest = this.networkRequest.newBuilder().header("Content-Length", Long.toString(((RetryableSink) this.requestBodyOut).contentLength())).build();
                        }
                        this.httpStream.writeRequestHeaders(this.networkRequest);
                    }
                    if (this.requestBodyOut != null) {
                        if (this.bufferedRequestBody != null) {
                            this.bufferedRequestBody.close();
                        } else {
                            this.requestBodyOut.close();
                        }
                        if (this.requestBodyOut instanceof RetryableSink) {
                            this.httpStream.writeRequestBody((RetryableSink) this.requestBodyOut);
                        }
                    }
                    readNetworkResponse = readNetworkResponse();
                } else {
                    readNetworkResponse = new NetworkInterceptorChain(0, this.networkRequest).proceed(this.networkRequest);
                }
                receiveHeaders(readNetworkResponse.headers());
                if (this.cacheResponse != null) {
                    if (validate(this.cacheResponse, readNetworkResponse)) {
                        this.userResponse = this.cacheResponse.newBuilder().request(this.userRequest).priorResponse(stripBody(this.priorResponse)).headers(combine(this.cacheResponse.headers(), readNetworkResponse.headers())).cacheResponse(stripBody(this.cacheResponse)).networkResponse(stripBody(readNetworkResponse)).build();
                        readNetworkResponse.body().close();
                        releaseStreamAllocation();
                        InternalCache internalCache = Internal.instance.internalCache(this.client);
                        internalCache.trackConditionalCacheHit();
                        internalCache.update(this.cacheResponse, stripBody(this.userResponse));
                        this.userResponse = unzip(this.userResponse);
                        return;
                    }
                    Util.closeQuietly(this.cacheResponse.body());
                }
                this.userResponse = readNetworkResponse.newBuilder().request(this.userRequest).priorResponse(stripBody(this.priorResponse)).cacheResponse(stripBody(this.cacheResponse)).networkResponse(stripBody(readNetworkResponse)).build();
                if (hasBody(this.userResponse)) {
                    maybeCache();
                    this.userResponse = unzip(cacheWritingResponse(this.storeRequest, this.userResponse));
                }
            }
        }
    }

    private Response readNetworkResponse() throws IOException {
        this.httpStream.finishRequest();
        Response build = this.httpStream.readResponseHeaders().request(this.networkRequest).handshake(this.streamAllocation.connection().getHandshake()).header(OkHeaders.SENT_MILLIS, Long.toString(this.sentRequestMillis)).header(OkHeaders.RECEIVED_MILLIS, Long.toString(System.currentTimeMillis())).build();
        if (!this.forWebSocket) {
            build = build.newBuilder().body(this.httpStream.openResponseBody(build)).build();
        }
        if ("close".equalsIgnoreCase(build.request().header("Connection")) || "close".equalsIgnoreCase(build.header("Connection"))) {
            this.streamAllocation.noNewStreams();
        }
        return build;
    }

    private Response cacheWritingResponse(CacheRequest cacheRequest, Response response) throws IOException {
        if (cacheRequest == null) {
            return response;
        }
        aa body = cacheRequest.body();
        if (body == null) {
            return response;
        }
        return response.newBuilder().body(new RealResponseBody(response.headers(), q.a(new AnonymousClass2(response.body().source(), cacheRequest, q.a(body))))).build();
    }

    private static boolean validate(Response response, Response response2) {
        if (response2.code() == 304) {
            return true;
        }
        Date date = response.headers().getDate("Last-Modified");
        if (date != null) {
            Date date2 = response2.headers().getDate("Last-Modified");
            if (date2 != null && date2.getTime() < date.getTime()) {
                return true;
            }
        }
        return false;
    }

    private static Headers combine(Headers headers, Headers headers2) throws IOException {
        int i;
        int i2 = 0;
        Headers.Builder builder = new Headers.Builder();
        int size = headers.size();
        for (i = 0; i < size; i++) {
            String name = headers.name(i);
            String value = headers.value(i);
            if (!("Warning".equalsIgnoreCase(name) && value.startsWith("1")) && (!OkHeaders.isEndToEnd(name) || headers2.get(name) == null)) {
                builder.add(name, value);
            }
        }
        i = headers2.size();
        while (i2 < i) {
            String name2 = headers2.name(i2);
            if (!"Content-Length".equalsIgnoreCase(name2) && OkHeaders.isEndToEnd(name2)) {
                builder.add(name2, headers2.value(i2));
            }
            i2++;
        }
        return builder.build();
    }

    public void receiveHeaders(Headers headers) throws IOException {
        CookieHandler cookieHandler = this.client.getCookieHandler();
        if (cookieHandler != null) {
            cookieHandler.put(this.userRequest.uri(), OkHeaders.toMultimap(headers, null));
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public com.squareup.okhttp.Request followUpRequest() throws java.io.IOException {
        /*
        r5 = this;
        r1 = 0;
        r0 = r5.userResponse;
        if (r0 != 0) goto L_0x000b;
    L_0x0005:
        r0 = new java.lang.IllegalStateException;
        r0.<init>();
        throw r0;
    L_0x000b:
        r0 = r5.streamAllocation;
        r0 = r0.connection();
        if (r0 == 0) goto L_0x002e;
    L_0x0013:
        r0 = r0.getRoute();
    L_0x0017:
        if (r0 == 0) goto L_0x0030;
    L_0x0019:
        r0 = r0.getProxy();
    L_0x001d:
        r2 = r5.userResponse;
        r2 = r2.code();
        r3 = r5.userRequest;
        r3 = r3.method();
        switch(r2) {
            case 300: goto L_0x0069;
            case 301: goto L_0x0069;
            case 302: goto L_0x0069;
            case 303: goto L_0x0069;
            case 307: goto L_0x0055;
            case 308: goto L_0x0055;
            case 401: goto L_0x0048;
            case 407: goto L_0x0037;
            default: goto L_0x002c;
        };
    L_0x002c:
        r0 = r1;
    L_0x002d:
        return r0;
    L_0x002e:
        r0 = r1;
        goto L_0x0017;
    L_0x0030:
        r0 = r5.client;
        r0 = r0.getProxy();
        goto L_0x001d;
    L_0x0037:
        r1 = r0.type();
        r2 = java.net.Proxy.Type.HTTP;
        if (r1 == r2) goto L_0x0048;
    L_0x003f:
        r0 = new java.net.ProtocolException;
        r1 = "Received HTTP_PROXY_AUTH (407) code while not using proxy";
        r0.<init>(r1);
        throw r0;
    L_0x0048:
        r1 = r5.client;
        r1 = r1.getAuthenticator();
        r2 = r5.userResponse;
        r0 = com.squareup.okhttp.internal.http.OkHeaders.processAuthHeader(r1, r2, r0);
        goto L_0x002d;
    L_0x0055:
        r0 = "GET";
        r0 = r3.equals(r0);
        if (r0 != 0) goto L_0x0069;
    L_0x005e:
        r0 = "HEAD";
        r0 = r3.equals(r0);
        if (r0 != 0) goto L_0x0069;
    L_0x0067:
        r0 = r1;
        goto L_0x002d;
    L_0x0069:
        r0 = r5.client;
        r0 = r0.getFollowRedirects();
        if (r0 != 0) goto L_0x0073;
    L_0x0071:
        r0 = r1;
        goto L_0x002d;
    L_0x0073:
        r0 = r5.userResponse;
        r2 = "Location";
        r0 = r0.header(r2);
        if (r0 != 0) goto L_0x0080;
    L_0x007e:
        r0 = r1;
        goto L_0x002d;
    L_0x0080:
        r2 = r5.userRequest;
        r2 = r2.httpUrl();
        r0 = r2.resolve(r0);
        if (r0 != 0) goto L_0x008e;
    L_0x008c:
        r0 = r1;
        goto L_0x002d;
    L_0x008e:
        r2 = r0.scheme();
        r4 = r5.userRequest;
        r4 = r4.httpUrl();
        r4 = r4.scheme();
        r2 = r2.equals(r4);
        if (r2 != 0) goto L_0x00ac;
    L_0x00a2:
        r2 = r5.client;
        r2 = r2.getFollowSslRedirects();
        if (r2 != 0) goto L_0x00ac;
    L_0x00aa:
        r0 = r1;
        goto L_0x002d;
    L_0x00ac:
        r2 = r5.userRequest;
        r2 = r2.newBuilder();
        r4 = com.squareup.okhttp.internal.http.HttpMethod.permitsRequestBody(r3);
        if (r4 == 0) goto L_0x00d6;
    L_0x00b8:
        r4 = com.squareup.okhttp.internal.http.HttpMethod.redirectsToGet(r3);
        if (r4 == 0) goto L_0x00ec;
    L_0x00be:
        r3 = "GET";
        r2.method(r3, r1);
    L_0x00c4:
        r1 = "Transfer-Encoding";
        r2.removeHeader(r1);
        r1 = "Content-Length";
        r2.removeHeader(r1);
        r1 = "Content-Type";
        r2.removeHeader(r1);
    L_0x00d6:
        r1 = r5.sameConnection(r0);
        if (r1 != 0) goto L_0x00e2;
    L_0x00dc:
        r1 = "Authorization";
        r2.removeHeader(r1);
    L_0x00e2:
        r0 = r2.url(r0);
        r0 = r0.build();
        goto L_0x002d;
    L_0x00ec:
        r2.method(r3, r1);
        goto L_0x00c4;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.squareup.okhttp.internal.http.HttpEngine.followUpRequest():com.squareup.okhttp.Request");
    }

    public boolean sameConnection(HttpUrl httpUrl) {
        HttpUrl httpUrl2 = this.userRequest.httpUrl();
        return httpUrl2.host().equals(httpUrl.host()) && httpUrl2.port() == httpUrl.port() && httpUrl2.scheme().equals(httpUrl.scheme());
    }

    private static Address createAddress(OkHttpClient okHttpClient, Request request) {
        SSLSocketFactory sslSocketFactory;
        HostnameVerifier hostnameVerifier;
        CertificatePinner certificatePinner = null;
        if (request.isHttps()) {
            sslSocketFactory = okHttpClient.getSslSocketFactory();
            hostnameVerifier = okHttpClient.getHostnameVerifier();
            certificatePinner = okHttpClient.getCertificatePinner();
        } else {
            hostnameVerifier = null;
            sslSocketFactory = null;
        }
        return new Address(request.httpUrl().host(), request.httpUrl().port(), okHttpClient.getDns(), okHttpClient.getSocketFactory(), sslSocketFactory, hostnameVerifier, certificatePinner, okHttpClient.getAuthenticator(), okHttpClient.getProxy(), okHttpClient.getProtocols(), okHttpClient.getConnectionSpecs(), okHttpClient.getProxySelector());
    }
}
