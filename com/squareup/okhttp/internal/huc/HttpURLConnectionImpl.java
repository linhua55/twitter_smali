package com.squareup.okhttp.internal.huc;

import com.google.android.exoplayer.hls.HlsMediaPlaylist;
import com.squareup.okhttp.Connection;
import com.squareup.okhttp.Handshake;
import com.squareup.okhttp.Headers;
import com.squareup.okhttp.Headers.Builder;
import com.squareup.okhttp.HttpUrl;
import com.squareup.okhttp.OkHttpClient;
import com.squareup.okhttp.Protocol;
import com.squareup.okhttp.Request;
import com.squareup.okhttp.RequestBody;
import com.squareup.okhttp.Response;
import com.squareup.okhttp.Route;
import com.squareup.okhttp.internal.Internal;
import com.squareup.okhttp.internal.Platform;
import com.squareup.okhttp.internal.Util;
import com.squareup.okhttp.internal.Version;
import com.squareup.okhttp.internal.http.HttpDate;
import com.squareup.okhttp.internal.http.HttpEngine;
import com.squareup.okhttp.internal.http.HttpMethod;
import com.squareup.okhttp.internal.http.OkHeaders;
import com.squareup.okhttp.internal.http.RequestException;
import com.squareup.okhttp.internal.http.RetryableSink;
import com.squareup.okhttp.internal.http.RouteException;
import com.squareup.okhttp.internal.http.StatusLine;
import com.squareup.okhttp.internal.http.StreamAllocation;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.InetSocketAddress;
import java.net.MalformedURLException;
import java.net.ProtocolException;
import java.net.Proxy;
import java.net.Proxy.Type;
import java.net.SocketPermission;
import java.net.URL;
import java.net.UnknownHostException;
import java.security.Permission;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import okio.i;

/* compiled from: Twttr */
public class HttpURLConnectionImpl extends HttpURLConnection {
    private static final RequestBody EMPTY_REQUEST_BODY;
    private static final Set<String> METHODS;
    final OkHttpClient client;
    private long fixedContentLength;
    private int followUpCount;
    Handshake handshake;
    protected HttpEngine httpEngine;
    protected IOException httpEngineFailure;
    private Builder requestHeaders;
    private Headers responseHeaders;
    private Route route;

    static {
        METHODS = new LinkedHashSet(Arrays.asList(new String[]{"OPTIONS", "GET", "HEAD", "POST", "PUT", "DELETE", "TRACE", "PATCH"}));
        EMPTY_REQUEST_BODY = RequestBody.create(null, new byte[0]);
    }

    public HttpURLConnectionImpl(URL url, OkHttpClient okHttpClient) {
        super(url);
        this.requestHeaders = new Builder();
        this.fixedContentLength = -1;
        this.client = okHttpClient;
    }

    public final void connect() throws IOException {
        initHttpEngine();
        do {
        } while (!execute(false));
    }

    public final void disconnect() {
        if (this.httpEngine != null) {
            this.httpEngine.cancel();
        }
    }

    public final InputStream getErrorStream() {
        InputStream inputStream = null;
        try {
            HttpEngine response = getResponse();
            if (HttpEngine.hasBody(response.getResponse()) && response.getResponse().code() >= 400) {
                inputStream = response.getResponse().body().byteStream();
            }
        } catch (IOException e) {
        }
        return inputStream;
    }

    private Headers getHeaders() throws IOException {
        if (this.responseHeaders == null) {
            Response response = getResponse().getResponse();
            this.responseHeaders = response.headers().newBuilder().add(OkHeaders.SELECTED_PROTOCOL, response.protocol().toString()).add(OkHeaders.RESPONSE_SOURCE, responseSourceHeader(response)).build();
        }
        return this.responseHeaders;
    }

    private static String responseSourceHeader(Response response) {
        if (response.networkResponse() == null) {
            if (response.cacheResponse() == null) {
                return HlsMediaPlaylist.ENCRYPTION_METHOD_NONE;
            }
            return "CACHE " + response.code();
        } else if (response.cacheResponse() == null) {
            return "NETWORK " + response.code();
        } else {
            return "CONDITIONAL_CACHE " + response.networkResponse().code();
        }
    }

    public final String getHeaderField(int i) {
        try {
            return getHeaders().value(i);
        } catch (IOException e) {
            return null;
        }
    }

    public final String getHeaderField(String str) {
        if (str != null) {
            return getHeaders().get(str);
        }
        try {
            return StatusLine.get(getResponse().getResponse()).toString();
        } catch (IOException e) {
            return null;
        }
    }

    public final String getHeaderFieldKey(int i) {
        try {
            return getHeaders().name(i);
        } catch (IOException e) {
            return null;
        }
    }

    public final Map<String, List<String>> getHeaderFields() {
        try {
            return OkHeaders.toMultimap(getHeaders(), StatusLine.get(getResponse().getResponse()).toString());
        } catch (IOException e) {
            return Collections.emptyMap();
        }
    }

    public final Map<String, List<String>> getRequestProperties() {
        if (!this.connected) {
            return OkHeaders.toMultimap(this.requestHeaders.build(), null);
        }
        throw new IllegalStateException("Cannot access request header fields after connection is set");
    }

    public final InputStream getInputStream() throws IOException {
        if (this.doInput) {
            HttpEngine response = getResponse();
            if (getResponseCode() < 400) {
                return response.getResponse().body().byteStream();
            }
            throw new FileNotFoundException(this.url.toString());
        }
        throw new ProtocolException("This protocol does not support input");
    }

    public final OutputStream getOutputStream() throws IOException {
        connect();
        i bufferedRequestBody = this.httpEngine.getBufferedRequestBody();
        if (bufferedRequestBody == null) {
            throw new ProtocolException("method does not support a request body: " + this.method);
        } else if (!this.httpEngine.hasResponse()) {
            return bufferedRequestBody.c();
        } else {
            throw new ProtocolException("cannot write request body after response has been read");
        }
    }

    public final Permission getPermission() throws IOException {
        URL url = getURL();
        String host = url.getHost();
        int port = url.getPort() != -1 ? url.getPort() : HttpUrl.defaultPort(url.getProtocol());
        if (usingProxy()) {
            InetSocketAddress inetSocketAddress = (InetSocketAddress) this.client.getProxy().address();
            host = inetSocketAddress.getHostName();
            port = inetSocketAddress.getPort();
        }
        return new SocketPermission(host + ":" + port, "connect, resolve");
    }

    public final String getRequestProperty(String str) {
        if (str == null) {
            return null;
        }
        return this.requestHeaders.get(str);
    }

    public void setConnectTimeout(int i) {
        this.client.setConnectTimeout((long) i, TimeUnit.MILLISECONDS);
    }

    public void setInstanceFollowRedirects(boolean z) {
        this.client.setFollowRedirects(z);
    }

    public boolean getInstanceFollowRedirects() {
        return this.client.getFollowRedirects();
    }

    public int getConnectTimeout() {
        return this.client.getConnectTimeout();
    }

    public void setReadTimeout(int i) {
        this.client.setReadTimeout((long) i, TimeUnit.MILLISECONDS);
    }

    public int getReadTimeout() {
        return this.client.getReadTimeout();
    }

    private void initHttpEngine() throws IOException {
        if (this.httpEngineFailure != null) {
            throw this.httpEngineFailure;
        } else if (this.httpEngine == null) {
            this.connected = true;
            try {
                if (this.doOutput) {
                    if (this.method.equals("GET")) {
                        this.method = "POST";
                    } else if (!HttpMethod.permitsRequestBody(this.method)) {
                        throw new ProtocolException(this.method + " does not support writing");
                    }
                }
                this.httpEngine = newHttpEngine(this.method, null, null, null);
            } catch (IOException e) {
                this.httpEngineFailure = e;
                throw e;
            }
        }
    }

    private HttpEngine newHttpEngine(String str, StreamAllocation streamAllocation, RetryableSink retryableSink, Response response) throws MalformedURLException, UnknownHostException {
        Request.Builder method = new Request.Builder().url(Internal.instance.getHttpUrlChecked(getURL().toString())).method(str, HttpMethod.requiresRequestBody(str) ? EMPTY_REQUEST_BODY : null);
        Headers build = this.requestHeaders.build();
        int size = build.size();
        for (int i = 0; i < size; i++) {
            method.addHeader(build.name(i), build.value(i));
        }
        boolean z = false;
        if (HttpMethod.permitsRequestBody(str)) {
            if (this.fixedContentLength != -1) {
                method.header("Content-Length", Long.toString(this.fixedContentLength));
            } else if (this.chunkLength > 0) {
                method.header("Transfer-Encoding", "chunked");
            } else {
                z = true;
            }
            if (build.get("Content-Type") == null) {
                method.header("Content-Type", "application/x-www-form-urlencoded");
            }
        }
        boolean z2 = z;
        if (build.get("User-Agent") == null) {
            method.header("User-Agent", defaultUserAgent());
        }
        Request build2 = method.build();
        OkHttpClient okHttpClient = this.client;
        if (!(Internal.instance.internalCache(okHttpClient) == null || getUseCaches())) {
            okHttpClient = this.client.clone().setCache(null);
        }
        return new HttpEngine(okHttpClient, build2, z2, true, false, streamAllocation, retryableSink, response);
    }

    private String defaultUserAgent() {
        String property = System.getProperty("http.agent");
        return property != null ? Util.toHumanReadableAscii(property) : Version.userAgent();
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private com.squareup.okhttp.internal.http.HttpEngine getResponse() throws java.io.IOException {
        /*
        r7 = this;
        r2 = 0;
        r7.initHttpEngine();
        r0 = r7.httpEngine;
        r0 = r0.hasResponse();
        if (r0 == 0) goto L_0x000f;
    L_0x000c:
        r0 = r7.httpEngine;
    L_0x000e:
        return r0;
    L_0x000f:
        r0 = 1;
        r0 = r7.execute(r0);
        if (r0 == 0) goto L_0x000f;
    L_0x0016:
        r0 = r7.httpEngine;
        r3 = r0.getResponse();
        r0 = r7.httpEngine;
        r4 = r0.followUpRequest();
        if (r4 != 0) goto L_0x002c;
    L_0x0024:
        r0 = r7.httpEngine;
        r0.releaseStreamAllocation();
        r0 = r7.httpEngine;
        goto L_0x000e;
    L_0x002c:
        r0 = r7.followUpCount;
        r0 = r0 + 1;
        r7.followUpCount = r0;
        r1 = 20;
        if (r0 <= r1) goto L_0x0052;
    L_0x0036:
        r0 = new java.net.ProtocolException;
        r1 = new java.lang.StringBuilder;
        r1.<init>();
        r2 = "Too many follow-up requests: ";
        r1 = r1.append(r2);
        r2 = r7.followUpCount;
        r1 = r1.append(r2);
        r1 = r1.toString();
        r0.<init>(r1);
        throw r0;
    L_0x0052:
        r0 = r4.url();
        r7.url = r0;
        r0 = r4.headers();
        r0 = r0.newBuilder();
        r7.requestHeaders = r0;
        r0 = r7.httpEngine;
        r0 = r0.getRequestBody();
        r1 = r4.method();
        r5 = r7.method;
        r1 = r1.equals(r5);
        if (r1 != 0) goto L_0x0075;
    L_0x0074:
        r0 = r2;
    L_0x0075:
        if (r0 == 0) goto L_0x0086;
    L_0x0077:
        r1 = r0 instanceof com.squareup.okhttp.internal.http.RetryableSink;
        if (r1 != 0) goto L_0x0086;
    L_0x007b:
        r0 = new java.net.HttpRetryException;
        r1 = "Cannot retry streamed HTTP body";
        r2 = r7.responseCode;
        r0.<init>(r1, r2);
        throw r0;
    L_0x0086:
        r1 = r7.httpEngine;
        r1 = r1.close();
        r5 = r7.httpEngine;
        r6 = r4.httpUrl();
        r5 = r5.sameConnection(r6);
        if (r5 != 0) goto L_0x009c;
    L_0x0098:
        r1.release();
        r1 = r2;
    L_0x009c:
        r4 = r4.method();
        r0 = (com.squareup.okhttp.internal.http.RetryableSink) r0;
        r0 = r7.newHttpEngine(r4, r1, r0, r3);
        r7.httpEngine = r0;
        goto L_0x000f;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.squareup.okhttp.internal.huc.HttpURLConnectionImpl.getResponse():com.squareup.okhttp.internal.http.HttpEngine");
    }

    private boolean execute(boolean z) throws IOException {
        IOException cause;
        HttpEngine recover;
        Throwable th;
        boolean z2 = false;
        try {
            this.httpEngine.sendRequest();
            Connection connection = this.httpEngine.getConnection();
            if (connection != null) {
                this.route = connection.getRoute();
                this.handshake = connection.getHandshake();
            } else {
                this.route = null;
                this.handshake = null;
            }
            if (!z) {
                return true;
            }
            this.httpEngine.readResponse();
            return true;
        } catch (RequestException e) {
            cause = e.getCause();
            this.httpEngineFailure = cause;
            throw cause;
        } catch (RouteException e2) {
            recover = this.httpEngine.recover(e2);
            if (recover != null) {
                this.httpEngine = recover;
                return false;
            }
            cause = e2.getLastConnectException();
            this.httpEngineFailure = cause;
            throw cause;
        } catch (IOException e3) {
            recover = this.httpEngine.recover(e3);
            if (recover != null) {
                this.httpEngine = recover;
                return false;
            }
            this.httpEngineFailure = e3;
            throw e3;
        } catch (Throwable th2) {
            th = th2;
            if (z2) {
                this.httpEngine.close().release();
            }
            throw th;
        }
    }

    public final boolean usingProxy() {
        Proxy proxy = this.route != null ? this.route.getProxy() : this.client.getProxy();
        return (proxy == null || proxy.type() == Type.DIRECT) ? false : true;
    }

    public String getResponseMessage() throws IOException {
        return getResponse().getResponse().message();
    }

    public final int getResponseCode() throws IOException {
        return getResponse().getResponse().code();
    }

    public final void setRequestProperty(String str, String str2) {
        if (this.connected) {
            throw new IllegalStateException("Cannot set request property after connection is made");
        } else if (str == null) {
            throw new NullPointerException("field == null");
        } else if (str2 == null) {
            Platform.get().logW("Ignoring header " + str + " because its value was null.");
        } else if ("X-Android-Transports".equals(str) || "X-Android-Protocols".equals(str)) {
            setProtocols(str2, false);
        } else {
            this.requestHeaders.set(str, str2);
        }
    }

    public void setIfModifiedSince(long j) {
        super.setIfModifiedSince(j);
        if (this.ifModifiedSince != 0) {
            this.requestHeaders.set("If-Modified-Since", HttpDate.format(new Date(this.ifModifiedSince)));
        } else {
            this.requestHeaders.removeAll("If-Modified-Since");
        }
    }

    public final void addRequestProperty(String str, String str2) {
        if (this.connected) {
            throw new IllegalStateException("Cannot add request property after connection is made");
        } else if (str == null) {
            throw new NullPointerException("field == null");
        } else if (str2 == null) {
            Platform.get().logW("Ignoring header " + str + " because its value was null.");
        } else if ("X-Android-Transports".equals(str) || "X-Android-Protocols".equals(str)) {
            setProtocols(str2, true);
        } else {
            this.requestHeaders.add(str, str2);
        }
    }

    private void setProtocols(String str, boolean z) {
        List arrayList = new ArrayList();
        if (z) {
            arrayList.addAll(this.client.getProtocols());
        }
        String[] split = str.split(",", -1);
        int length = split.length;
        int i = 0;
        while (i < length) {
            try {
                arrayList.add(Protocol.get(split[i]));
                i++;
            } catch (Throwable e) {
                throw new IllegalStateException(e);
            }
        }
        this.client.setProtocols(arrayList);
    }

    public void setRequestMethod(String str) throws ProtocolException {
        if (METHODS.contains(str)) {
            this.method = str;
            return;
        }
        throw new ProtocolException("Expected one of " + METHODS + " but was " + str);
    }

    public void setFixedLengthStreamingMode(int i) {
        setFixedLengthStreamingMode((long) i);
    }

    public void setFixedLengthStreamingMode(long j) {
        if (this.connected) {
            throw new IllegalStateException("Already connected");
        } else if (this.chunkLength > 0) {
            throw new IllegalStateException("Already in chunked mode");
        } else if (j < 0) {
            throw new IllegalArgumentException("contentLength < 0");
        } else {
            this.fixedContentLength = j;
            this.fixedContentLength = (int) Math.min(j, 2147483647L);
        }
    }
}
