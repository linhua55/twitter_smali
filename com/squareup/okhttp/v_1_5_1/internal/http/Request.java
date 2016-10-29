package com.squareup.okhttp.v_1_5_1.internal.http;

import com.squareup.okhttp.v_1_5_1.CacheControl;
import com.squareup.okhttp.v_1_5_1.MediaType;
import com.squareup.okhttp.v_1_5_1.internal.Platform;
import com.squareup.okhttp.v_1_5_1.internal.Util;
import com.squareup.okhttp.v_1_5_1.internal.okio.BufferedSink;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.List;

/* compiled from: Twttr */
public final class Request {
    private final Body body;
    private volatile CacheControl cacheControl;
    private final Headers headers;
    private final String method;
    private volatile ParsedHeaders parsedHeaders;
    private final Object tag;
    private volatile URI uri;
    private final URL url;

    /* compiled from: Twttr */
    public abstract class Body {

        /* compiled from: Twttr */
        /* renamed from: com.squareup.okhttp.v_1_5_1.internal.http.Request.Body.1 */
        final class AnonymousClass1 extends Body {
            final /* synthetic */ byte[] val$content;
            final /* synthetic */ MediaType val$contentType;

            AnonymousClass1(MediaType mediaType, byte[] bArr) {
                this.val$contentType = mediaType;
                this.val$content = bArr;
            }

            public MediaType contentType() {
                return this.val$contentType;
            }

            public long contentLength() {
                return (long) this.val$content.length;
            }

            public void writeTo(BufferedSink bufferedSink) throws IOException {
                bufferedSink.write(this.val$content);
            }
        }

        /* compiled from: Twttr */
        /* renamed from: com.squareup.okhttp.v_1_5_1.internal.http.Request.Body.2 */
        final class AnonymousClass2 extends Body {
            final /* synthetic */ MediaType val$contentType;
            final /* synthetic */ File val$file;

            AnonymousClass2(MediaType mediaType, File file) {
                this.val$contentType = mediaType;
                this.val$file = file;
            }

            public MediaType contentType() {
                return this.val$contentType;
            }

            public long contentLength() {
                return this.val$file.length();
            }

            public void writeTo(BufferedSink bufferedSink) throws IOException {
                Throwable th;
                long contentLength = contentLength();
                if (contentLength != 0) {
                    Closeable fileInputStream;
                    try {
                        fileInputStream = new FileInputStream(this.val$file);
                        try {
                            byte[] bArr = new byte[((int) Math.min(8192, contentLength))];
                            while (true) {
                                int read = fileInputStream.read(bArr);
                                if (read != -1) {
                                    bufferedSink.write(bArr, 0, read);
                                } else {
                                    Util.closeQuietly(fileInputStream);
                                    return;
                                }
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            Util.closeQuietly(fileInputStream);
                            throw th;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        fileInputStream = null;
                        Util.closeQuietly(fileInputStream);
                        throw th;
                    }
                }
            }
        }

        public abstract MediaType contentType();

        public abstract void writeTo(BufferedSink bufferedSink) throws IOException;

        public long contentLength() {
            return -1;
        }

        public static Body create(MediaType mediaType, String str) {
            if (mediaType.charset() == null) {
                mediaType = MediaType.parse(mediaType + "; charset=utf-8");
            }
            try {
                return create(mediaType, str.getBytes(mediaType.charset().name()));
            } catch (UnsupportedEncodingException e) {
                throw new AssertionError();
            }
        }

        public static Body create(MediaType mediaType, byte[] bArr) {
            if (mediaType == null) {
                throw new NullPointerException("contentType == null");
            } else if (bArr != null) {
                return new AnonymousClass1(mediaType, bArr);
            } else {
                throw new NullPointerException("content == null");
            }
        }

        public static Body create(MediaType mediaType, File file) {
            if (mediaType == null) {
                throw new NullPointerException("contentType == null");
            } else if (file != null) {
                return new AnonymousClass2(mediaType, file);
            } else {
                throw new NullPointerException("content == null");
            }
        }
    }

    /* compiled from: Twttr */
    public class Builder {
        private Body body;
        private com.squareup.okhttp.v_1_5_1.internal.http.Headers.Builder headers;
        private String method;
        private Object tag;
        private URL url;

        public Builder() {
            this.method = "GET";
            this.headers = new com.squareup.okhttp.v_1_5_1.internal.http.Headers.Builder();
        }

        private Builder(Request request) {
            this.url = request.url;
            this.method = request.method;
            this.body = request.body;
            this.tag = request.tag;
            this.headers = request.headers.newBuilder();
        }

        public Builder url(String str) {
            try {
                return url(new URL(str));
            } catch (MalformedURLException e) {
                throw new IllegalArgumentException("Malformed URL: " + str);
            }
        }

        public Builder url(URL url) {
            if (url == null) {
                throw new IllegalArgumentException("url == null");
            }
            this.url = url;
            return this;
        }

        public Builder header(String str, String str2) {
            this.headers.set(str, str2);
            return this;
        }

        public Builder addHeader(String str, String str2) {
            this.headers.add(str, str2);
            return this;
        }

        public Builder removeHeader(String str) {
            this.headers.removeAll(str);
            return this;
        }

        public Builder headers(Headers headers) {
            this.headers = headers.newBuilder();
            return this;
        }

        public Builder setUserAgent(String str) {
            return header("User-Agent", str);
        }

        public Builder get() {
            return method("GET", null);
        }

        public Builder head() {
            return method("HEAD", null);
        }

        public Builder post(Body body) {
            return method("POST", body);
        }

        public Builder put(Body body) {
            return method("PUT", body);
        }

        public Builder method(String str, Body body) {
            if (str == null || str.length() == 0) {
                throw new IllegalArgumentException("method == null || method.length() == 0");
            }
            this.method = str;
            this.body = body;
            return this;
        }

        public Builder tag(Object obj) {
            this.tag = obj;
            return this;
        }

        public Request build() {
            if (this.url != null) {
                return new Request();
            }
            throw new IllegalStateException("url == null");
        }
    }

    /* compiled from: Twttr */
    class ParsedHeaders {
        private String proxyAuthorization;
        private String userAgent;

        public ParsedHeaders(Headers headers) {
            for (int i = 0; i < headers.size(); i++) {
                String name = headers.name(i);
                String value = headers.value(i);
                if ("User-Agent".equalsIgnoreCase(name)) {
                    this.userAgent = value;
                } else if ("Proxy-Authorization".equalsIgnoreCase(name)) {
                    this.proxyAuthorization = value;
                }
            }
        }
    }

    private Request(Builder builder) {
        Object access$400;
        this.url = builder.url;
        this.method = builder.method;
        this.headers = builder.headers.build();
        this.body = builder.body;
        if (builder.tag != null) {
            access$400 = builder.tag;
        } else {
            Request request = this;
        }
        this.tag = access$400;
    }

    public URL url() {
        return this.url;
    }

    public URI uri() throws IOException {
        try {
            URI uri = this.uri;
            if (uri == null) {
                uri = Platform.get().toUriLenient(this.url);
                this.uri = uri;
            }
            return uri;
        } catch (URISyntaxException e) {
            throw new IOException(e.getMessage());
        }
    }

    public String urlString() {
        return this.url.toString();
    }

    public String method() {
        return this.method;
    }

    public Headers headers() {
        return this.headers;
    }

    public String header(String str) {
        return this.headers.get(str);
    }

    public List<String> headers(String str) {
        return this.headers.values(str);
    }

    public Body body() {
        return this.body;
    }

    public Object tag() {
        return this.tag;
    }

    public Builder newBuilder() {
        return new Builder();
    }

    public Headers getHeaders() {
        return this.headers;
    }

    public String getUserAgent() {
        return parsedHeaders().userAgent;
    }

    public String getProxyAuthorization() {
        return parsedHeaders().proxyAuthorization;
    }

    private ParsedHeaders parsedHeaders() {
        ParsedHeaders parsedHeaders = this.parsedHeaders;
        if (parsedHeaders != null) {
            return parsedHeaders;
        }
        parsedHeaders = new ParsedHeaders(this.headers);
        this.parsedHeaders = parsedHeaders;
        return parsedHeaders;
    }

    public CacheControl cacheControl() {
        CacheControl cacheControl = this.cacheControl;
        if (cacheControl != null) {
            return cacheControl;
        }
        cacheControl = CacheControl.parse(this.headers);
        this.cacheControl = cacheControl;
        return cacheControl;
    }

    public boolean isHttps() {
        return url().getProtocol().equals("https");
    }
}
