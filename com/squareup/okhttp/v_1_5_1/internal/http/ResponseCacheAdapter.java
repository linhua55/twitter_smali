package com.squareup.okhttp.v_1_5_1.internal.http;

import com.squareup.okhttp.v_1_5_1.Handshake;
import com.squareup.okhttp.v_1_5_1.MediaType;
import com.squareup.okhttp.v_1_5_1.OkResponseCache;
import com.squareup.okhttp.v_1_5_1.ResponseSource;
import com.squareup.okhttp.v_1_5_1.internal.http.Response.Body;
import com.squareup.okhttp.v_1_5_1.internal.http.Response.Builder;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.CacheRequest;
import java.net.CacheResponse;
import java.net.HttpURLConnection;
import java.net.ProtocolException;
import java.net.ResponseCache;
import java.net.SecureCacheResponse;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSocketFactory;

/* compiled from: Twttr */
public class ResponseCacheAdapter implements OkResponseCache {
    private final ResponseCache delegate;

    /* compiled from: Twttr */
    /* renamed from: com.squareup.okhttp.v_1_5_1.internal.http.ResponseCacheAdapter.1 */
    final class AnonymousClass1 extends Body {
        final /* synthetic */ InputStream val$body;
        final /* synthetic */ Headers val$okHeaders;

        AnonymousClass1(Headers headers, InputStream inputStream) {
            this.val$okHeaders = headers;
            this.val$body = inputStream;
        }

        public boolean ready() throws IOException {
            return true;
        }

        public MediaType contentType() {
            String str = this.val$okHeaders.get("Content-Type");
            return str == null ? null : MediaType.parse(str);
        }

        public long contentLength() {
            return OkHeaders.contentLength(this.val$okHeaders);
        }

        public InputStream byteStream() {
            return this.val$body;
        }
    }

    /* compiled from: Twttr */
    final class CacheHttpURLConnection extends HttpURLConnection {
        private final Request request;
        private final Response response;

        public CacheHttpURLConnection(Response response) {
            boolean z = true;
            super(response.request().url());
            this.request = response.request();
            this.response = response;
            this.connected = true;
            if (response.body() != null) {
                z = false;
            }
            this.doOutput = z;
            this.method = this.request.method();
        }

        public void connect() throws IOException {
            throw ResponseCacheAdapter.throwRequestModificationException();
        }

        public void disconnect() {
            throw ResponseCacheAdapter.throwRequestModificationException();
        }

        public void setRequestProperty(String str, String str2) {
            throw ResponseCacheAdapter.throwRequestModificationException();
        }

        public void addRequestProperty(String str, String str2) {
            throw ResponseCacheAdapter.throwRequestModificationException();
        }

        public String getRequestProperty(String str) {
            return this.request.header(str);
        }

        public Map<String, List<String>> getRequestProperties() {
            throw ResponseCacheAdapter.throwRequestHeaderAccessException();
        }

        public void setFixedLengthStreamingMode(int i) {
            throw ResponseCacheAdapter.throwRequestModificationException();
        }

        public void setFixedLengthStreamingMode(long j) {
            throw ResponseCacheAdapter.throwRequestModificationException();
        }

        public void setChunkedStreamingMode(int i) {
            throw ResponseCacheAdapter.throwRequestModificationException();
        }

        public void setInstanceFollowRedirects(boolean z) {
            throw ResponseCacheAdapter.throwRequestModificationException();
        }

        public boolean getInstanceFollowRedirects() {
            return super.getInstanceFollowRedirects();
        }

        public void setRequestMethod(String str) throws ProtocolException {
            throw ResponseCacheAdapter.throwRequestModificationException();
        }

        public String getRequestMethod() {
            return this.request.method();
        }

        public String getHeaderFieldKey(int i) {
            if (i < 0) {
                throw new IllegalArgumentException("Invalid header index: " + i);
            } else if (i == 0) {
                return null;
            } else {
                return this.response.headers().name(i - 1);
            }
        }

        public String getHeaderField(int i) {
            if (i < 0) {
                throw new IllegalArgumentException("Invalid header index: " + i);
            } else if (i == 0) {
                return this.response.statusLine();
            } else {
                return this.response.headers().value(i - 1);
            }
        }

        public String getHeaderField(String str) {
            return str == null ? this.response.statusLine() : this.response.headers().get(str);
        }

        public Map<String, List<String>> getHeaderFields() {
            return OkHeaders.toMultimap(this.response.headers(), this.response.statusLine());
        }

        public int getResponseCode() throws IOException {
            return this.response.code();
        }

        public String getResponseMessage() throws IOException {
            return this.response.statusMessage();
        }

        public InputStream getErrorStream() {
            return null;
        }

        public boolean usingProxy() {
            return false;
        }

        public void setConnectTimeout(int i) {
            throw ResponseCacheAdapter.throwRequestModificationException();
        }

        public int getConnectTimeout() {
            return 0;
        }

        public void setReadTimeout(int i) {
            throw ResponseCacheAdapter.throwRequestModificationException();
        }

        public int getReadTimeout() {
            return 0;
        }

        public Object getContent() throws IOException {
            throw ResponseCacheAdapter.throwResponseBodyAccessException();
        }

        public Object getContent(Class[] clsArr) throws IOException {
            throw ResponseCacheAdapter.throwResponseBodyAccessException();
        }

        public InputStream getInputStream() throws IOException {
            throw ResponseCacheAdapter.throwResponseBodyAccessException();
        }

        public OutputStream getOutputStream() throws IOException {
            throw ResponseCacheAdapter.throwRequestModificationException();
        }

        public void setDoInput(boolean z) {
            throw ResponseCacheAdapter.throwRequestModificationException();
        }

        public boolean getDoInput() {
            return true;
        }

        public void setDoOutput(boolean z) {
            throw ResponseCacheAdapter.throwRequestModificationException();
        }

        public boolean getDoOutput() {
            return this.request.body() != null;
        }

        public void setAllowUserInteraction(boolean z) {
            throw ResponseCacheAdapter.throwRequestModificationException();
        }

        public boolean getAllowUserInteraction() {
            return false;
        }

        public void setUseCaches(boolean z) {
            throw ResponseCacheAdapter.throwRequestModificationException();
        }

        public boolean getUseCaches() {
            return super.getUseCaches();
        }

        public void setIfModifiedSince(long j) {
            throw ResponseCacheAdapter.throwRequestModificationException();
        }

        public long getIfModifiedSince() {
            return 0;
        }

        public boolean getDefaultUseCaches() {
            return super.getDefaultUseCaches();
        }

        public void setDefaultUseCaches(boolean z) {
            super.setDefaultUseCaches(z);
        }
    }

    /* compiled from: Twttr */
    final class CacheHttpsURLConnection extends DelegatingHttpsURLConnection {
        private final CacheHttpURLConnection delegate;

        public CacheHttpsURLConnection(CacheHttpURLConnection cacheHttpURLConnection) {
            super(cacheHttpURLConnection);
            this.delegate = cacheHttpURLConnection;
        }

        protected Handshake handshake() {
            return this.delegate.response.handshake();
        }

        public void setHostnameVerifier(HostnameVerifier hostnameVerifier) {
            throw ResponseCacheAdapter.throwRequestModificationException();
        }

        public HostnameVerifier getHostnameVerifier() {
            throw ResponseCacheAdapter.throwRequestSslAccessException();
        }

        public void setSSLSocketFactory(SSLSocketFactory sSLSocketFactory) {
            throw ResponseCacheAdapter.throwRequestModificationException();
        }

        public SSLSocketFactory getSSLSocketFactory() {
            throw ResponseCacheAdapter.throwRequestSslAccessException();
        }

        public void setFixedLengthStreamingMode(long j) {
            this.delegate.setFixedLengthStreamingMode(j);
        }
    }

    public ResponseCacheAdapter(ResponseCache responseCache) {
        this.delegate = responseCache;
    }

    public ResponseCache getDelegate() {
        return this.delegate;
    }

    public Response get(Request request) throws IOException {
        CacheResponse javaCachedResponse = getJavaCachedResponse(request);
        if (javaCachedResponse == null) {
            return null;
        }
        Builder builder = new Builder();
        builder.request(request);
        builder.statusLine(extractStatusLine(javaCachedResponse));
        Headers extractOkHeaders = extractOkHeaders(javaCachedResponse);
        builder.headers(extractOkHeaders);
        builder.setResponseSource(ResponseSource.CACHE);
        builder.body(createOkBody(extractOkHeaders, javaCachedResponse.getBody()));
        if (javaCachedResponse instanceof SecureCacheResponse) {
            List serverCertificateChain;
            SecureCacheResponse secureCacheResponse = (SecureCacheResponse) javaCachedResponse;
            try {
                serverCertificateChain = secureCacheResponse.getServerCertificateChain();
            } catch (SSLPeerUnverifiedException e) {
                serverCertificateChain = Collections.emptyList();
            }
            List localCertificateChain = secureCacheResponse.getLocalCertificateChain();
            if (localCertificateChain == null) {
                localCertificateChain = Collections.emptyList();
            }
            builder.handshake(Handshake.get(secureCacheResponse.getCipherSuite(), serverCertificateChain, localCertificateChain));
        }
        return builder.build();
    }

    public CacheRequest put(Response response) throws IOException {
        return this.delegate.put(response.request().uri(), createJavaUrlConnection(response));
    }

    public boolean maybeRemove(Request request) throws IOException {
        return false;
    }

    public void update(Response response, Response response2) throws IOException {
    }

    public void trackConditionalCacheHit() {
    }

    public void trackResponse(ResponseSource responseSource) {
    }

    private CacheResponse getJavaCachedResponse(Request request) throws IOException {
        return this.delegate.get(request.uri(), request.method(), extractJavaHeaders(request));
    }

    private static HttpURLConnection createJavaUrlConnection(Response response) {
        if (response.request().isHttps()) {
            return new CacheHttpsURLConnection(new CacheHttpURLConnection(response));
        }
        return new CacheHttpURLConnection(response);
    }

    private static Headers extractOkHeaders(CacheResponse cacheResponse) throws IOException {
        Map headers = cacheResponse.getHeaders();
        Headers.Builder builder = new Headers.Builder();
        for (Entry entry : headers.entrySet()) {
            String str = (String) entry.getKey();
            if (str != null) {
                for (String add : (List) entry.getValue()) {
                    builder.add(str, add);
                }
            }
        }
        return builder.build();
    }

    private static String extractStatusLine(CacheResponse cacheResponse) throws IOException {
        List list = (List) cacheResponse.getHeaders().get(null);
        if (list == null || list.size() == 0) {
            return null;
        }
        return (String) list.get(0);
    }

    private static Map<String, List<String>> extractJavaHeaders(Request request) {
        return OkHeaders.toMultimap(request.headers(), null);
    }

    private static Body createOkBody(Headers headers, InputStream inputStream) {
        return new AnonymousClass1(headers, inputStream);
    }

    private static RuntimeException throwRequestModificationException() {
        throw new UnsupportedOperationException("ResponseCache cannot modify the request.");
    }

    private static RuntimeException throwRequestHeaderAccessException() {
        throw new UnsupportedOperationException("ResponseCache cannot access request headers");
    }

    private static RuntimeException throwRequestSslAccessException() {
        throw new UnsupportedOperationException("ResponseCache cannot access SSL internals");
    }

    private static RuntimeException throwResponseBodyAccessException() {
        throw new UnsupportedOperationException("ResponseCache cannot access the response body.");
    }
}
