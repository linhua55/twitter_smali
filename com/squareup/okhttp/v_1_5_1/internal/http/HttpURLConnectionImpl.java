package com.squareup.okhttp.v_1_5_1.internal.http;

import com.squareup.okhttp.v_1_5_1.Connection;
import com.squareup.okhttp.v_1_5_1.Handshake;
import com.squareup.okhttp.v_1_5_1.OkHttpClient;
import com.squareup.okhttp.v_1_5_1.Route;
import com.squareup.okhttp.v_1_5_1.internal.Platform;
import com.squareup.okhttp.v_1_5_1.internal.Util;
import com.squareup.okhttp.v_1_5_1.internal.http.Headers.Builder;
import com.squareup.okhttp.v_1_5_1.internal.okio.BufferedSink;
import com.squareup.okhttp.v_1_5_1.internal.okio.ByteString;
import com.squareup.okhttp.v_1_5_1.internal.okio.Sink;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpRetryException;
import java.net.HttpURLConnection;
import java.net.InetSocketAddress;
import java.net.ProtocolException;
import java.net.Proxy;
import java.net.Proxy.Type;
import java.net.SocketPermission;
import java.net.URL;
import java.security.Permission;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;

/* compiled from: Twttr */
public class HttpURLConnectionImpl extends HttpURLConnection {
    public static final int MAX_REDIRECTS = 20;
    final OkHttpClient client;
    private long fixedContentLength;
    Handshake handshake;
    protected HttpEngine httpEngine;
    protected IOException httpEngineFailure;
    private int redirectionCount;
    private Builder requestHeaders;
    private Route route;

    /* compiled from: Twttr */
    enum Retry {
        NONE,
        SAME_CONNECTION,
        DIFFERENT_CONNECTION
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
            this.httpEngine.close();
        }
    }

    public final InputStream getErrorStream() {
        InputStream inputStream = null;
        try {
            HttpEngine response = getResponse();
            if (response.hasResponseBody() && response.getResponse().code() >= 400) {
                inputStream = response.getResponseBodyBytes();
            }
        } catch (IOException e) {
        }
        return inputStream;
    }

    public final String getHeaderField(int i) {
        try {
            return getResponse().getResponse().headers().value(i);
        } catch (IOException e) {
            return null;
        }
    }

    public final String getHeaderField(String str) {
        try {
            Response response = getResponse().getResponse();
            return str == null ? response.statusLine() : response.headers().get(str);
        } catch (IOException e) {
            return null;
        }
    }

    public final String getHeaderFieldKey(int i) {
        try {
            return getResponse().getResponse().headers().name(i);
        } catch (IOException e) {
            return null;
        }
    }

    public final Map<String, List<String>> getHeaderFields() {
        try {
            Response response = getResponse().getResponse();
            return OkHeaders.toMultimap(response.headers(), response.statusLine());
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
            if (getResponseCode() >= 400) {
                throw new FileNotFoundException(this.url.toString());
            }
            InputStream responseBodyBytes = response.getResponseBodyBytes();
            if (responseBodyBytes != null) {
                return responseBodyBytes;
            }
            throw new ProtocolException("No response body exists; responseCode=" + getResponseCode());
        }
        throw new ProtocolException("This protocol does not support input");
    }

    public final OutputStream getOutputStream() throws IOException {
        connect();
        BufferedSink bufferedRequestBody = this.httpEngine.getBufferedRequestBody();
        if (bufferedRequestBody == null) {
            throw new ProtocolException("method does not support a request body: " + this.method);
        } else if (!this.httpEngine.hasResponse()) {
            return bufferedRequestBody.outputStream();
        } else {
            throw new ProtocolException("cannot write request body after response has been read");
        }
    }

    public final Permission getPermission() throws IOException {
        String host = getURL().getHost();
        int effectivePort = Util.getEffectivePort(getURL());
        if (usingProxy()) {
            InetSocketAddress inetSocketAddress = (InetSocketAddress) this.client.getProxy().address();
            host = inetSocketAddress.getHostName();
            effectivePort = inetSocketAddress.getPort();
        }
        return new SocketPermission(host + ":" + effectivePort, "connect, resolve");
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
                    } else if (!HttpMethod.hasRequestBody(this.method)) {
                        throw new ProtocolException(this.method + " does not support writing");
                    }
                }
                this.httpEngine = newHttpEngine(this.method, null, null);
            } catch (IOException e) {
                this.httpEngineFailure = e;
                throw e;
            }
        }
    }

    private HttpEngine newHttpEngine(String str, Connection connection, RetryableSink retryableSink) {
        boolean z;
        Request.Builder method = new Request.Builder().url(getURL()).method(str, null);
        Headers build = this.requestHeaders.build();
        for (int i = 0; i < build.size(); i++) {
            method.addHeader(build.name(i), build.value(i));
        }
        if (this.fixedContentLength != -1) {
            method.header("Content-Length", Long.toString(this.fixedContentLength));
            z = false;
        } else if (this.chunkLength > 0) {
            method.header("Transfer-Encoding", "chunked");
            z = false;
        } else {
            z = true;
        }
        Request build2 = method.build();
        OkHttpClient okHttpClient = this.client;
        if (!(okHttpClient.getOkResponseCache() == null || getUseCaches())) {
            okHttpClient = this.client.clone().setOkResponseCache(null);
        }
        return new HttpEngine(okHttpClient, build2, z, connection, null, retryableSink);
    }

    private HttpEngine getResponse() throws IOException {
        initHttpEngine();
        if (this.httpEngine.hasResponse()) {
            return this.httpEngine;
        }
        int code;
        while (true) {
            if (execute(true)) {
                Retry processResponseHeaders = processResponseHeaders();
                if (processResponseHeaders != Retry.NONE) {
                    String str = this.method;
                    Sink requestBody = this.httpEngine.getRequestBody();
                    code = this.httpEngine.getResponse().code();
                    if (code == 300 || code == 301 || code == 302 || code == 303) {
                        str = "GET";
                        this.requestHeaders.removeAll("Content-Length");
                        requestBody = null;
                    }
                    if (requestBody != null && !(requestBody instanceof RetryableSink)) {
                        break;
                    }
                    if (processResponseHeaders == Retry.DIFFERENT_CONNECTION) {
                        this.httpEngine.releaseConnection();
                    }
                    this.httpEngine = newHttpEngine(str, this.httpEngine.close(), (RetryableSink) requestBody);
                } else {
                    this.httpEngine.releaseConnection();
                    return this.httpEngine;
                }
            }
        }
        throw new HttpRetryException("Cannot retry streamed HTTP body", code);
    }

    private boolean execute(boolean z) throws IOException {
        try {
            this.httpEngine.sendRequest();
            this.route = this.httpEngine.getRoute();
            this.handshake = this.httpEngine.getConnection() != null ? this.httpEngine.getConnection().getHandshake() : null;
            if (z) {
                this.httpEngine.readResponse();
            }
            return true;
        } catch (IOException e) {
            HttpEngine recover = this.httpEngine.recover(e);
            if (recover != null) {
                this.httpEngine = recover;
                return false;
            }
            this.httpEngineFailure = e;
            throw e;
        }
    }

    private Retry processResponseHeaders() throws IOException {
        Connection connection = this.httpEngine.getConnection();
        Proxy proxy = connection != null ? connection.getRoute().getProxy() : this.client.getProxy();
        int responseCode = getResponseCode();
        switch (responseCode) {
            case 300:
            case 301:
            case 302:
            case 303:
            case StatusLine.HTTP_TEMP_REDIRECT /*307*/:
                if (!getInstanceFollowRedirects()) {
                    return Retry.NONE;
                }
                int i = this.redirectionCount + 1;
                this.redirectionCount = i;
                if (i > MAX_REDIRECTS) {
                    throw new ProtocolException("Too many redirects: " + this.redirectionCount);
                } else if (responseCode == StatusLine.HTTP_TEMP_REDIRECT && !this.method.equals("GET") && !this.method.equals("HEAD")) {
                    return Retry.NONE;
                } else {
                    String headerField = getHeaderField("Location");
                    if (headerField == null) {
                        return Retry.NONE;
                    }
                    URL url = this.url;
                    this.url = new URL(url, headerField);
                    if (!this.url.getProtocol().equals("https") && !this.url.getProtocol().equals("http")) {
                        return Retry.NONE;
                    }
                    boolean equals = url.getProtocol().equals(this.url.getProtocol());
                    if (!equals && !this.client.getFollowProtocolRedirects()) {
                        return Retry.NONE;
                    }
                    boolean equals2 = url.getHost().equals(this.url.getHost());
                    Object obj = Util.getEffectivePort(url) == Util.getEffectivePort(this.url) ? 1 : null;
                    if (equals2 && obj != null && equals) {
                        return Retry.SAME_CONNECTION;
                    }
                    return Retry.DIFFERENT_CONNECTION;
                }
            case 401:
                break;
            case 407:
                if (proxy.type() != Type.HTTP) {
                    throw new ProtocolException("Received HTTP_PROXY_AUTH (407) code while not using proxy");
                }
                break;
            default:
                return Retry.NONE;
        }
        Request processAuthHeader = HttpAuthenticator.processAuthHeader(this.client.getAuthenticator(), this.httpEngine.getResponse(), proxy);
        if (processAuthHeader == null) {
            return Retry.NONE;
        }
        this.requestHeaders = processAuthHeader.getHeaders().newBuilder();
        return Retry.SAME_CONNECTION;
    }

    public final boolean usingProxy() {
        Proxy proxy = this.route != null ? this.route.getProxy() : this.client.getProxy();
        return (proxy == null || proxy.type() == Type.DIRECT) ? false : true;
    }

    public String getResponseMessage() throws IOException {
        return getResponse().getResponse().statusMessage();
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
            setProtocols(str2, false);
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
                arrayList.add(Util.getProtocol(ByteString.encodeUtf8(split[i])));
                i++;
            } catch (Throwable e) {
                throw new IllegalStateException(e);
            }
        }
        this.client.setProtocols(arrayList);
    }

    public void setRequestMethod(String str) throws ProtocolException {
        if (HttpMethod.METHODS.contains(str)) {
            this.method = str;
            return;
        }
        throw new ProtocolException("Expected one of " + HttpMethod.METHODS + " but was " + str);
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
