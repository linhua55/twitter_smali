package com.squareup.okhttp.v_1_5_1.internal.http;

import com.squareup.okhttp.v_1_5_1.CacheControl;
import com.squareup.okhttp.v_1_5_1.Handshake;
import com.squareup.okhttp.v_1_5_1.MediaType;
import com.squareup.okhttp.v_1_5_1.ResponseSource;
import com.squareup.okhttp.v_1_5_1.internal.Util;
import com.squareup.okhttp.v_1_5_1.internal.okio.Okio;
import com.squareup.okhttp.v_1_5_1.internal.okio.Source;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.Reader;
import java.nio.charset.Charset;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import java.util.Set;
import java.util.TreeSet;

/* compiled from: Twttr */
public final class Response {
    private final Body body;
    private volatile CacheControl cacheControl;
    private final Handshake handshake;
    private final Headers headers;
    private volatile ParsedHeaders parsedHeaders;
    private final Response redirectedBy;
    private final Request request;
    private final StatusLine statusLine;

    /* compiled from: Twttr */
    public abstract class Body implements Closeable {
        private Reader reader;
        private Source source;

        public abstract InputStream byteStream();

        public abstract long contentLength();

        public abstract MediaType contentType();

        public abstract boolean ready() throws IOException;

        public Source source() {
            Source source = this.source;
            if (source != null) {
                return source;
            }
            source = Okio.source(byteStream());
            this.source = source;
            return source;
        }

        public final byte[] bytes() throws IOException {
            long contentLength = contentLength();
            if (contentLength > 2147483647L) {
                throw new IOException("Cannot buffer entire body for content length: " + contentLength);
            } else if (contentLength != -1) {
                byte[] bArr = new byte[((int) contentLength)];
                InputStream byteStream = byteStream();
                Util.readFully(byteStream, bArr);
                if (byteStream.read() == -1) {
                    return bArr;
                }
                throw new IOException("Content-Length and stream length disagree");
            } else {
                OutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                Util.copy(byteStream(), byteArrayOutputStream);
                return byteArrayOutputStream.toByteArray();
            }
        }

        public final Reader charStream() {
            Reader reader = this.reader;
            if (reader != null) {
                return reader;
            }
            reader = new InputStreamReader(byteStream(), charset());
            this.reader = reader;
            return reader;
        }

        public final String string() throws IOException {
            return new String(bytes(), charset().name());
        }

        private Charset charset() {
            MediaType contentType = contentType();
            return contentType != null ? contentType.charset(Util.UTF_8) : Util.UTF_8;
        }

        public void close() throws IOException {
            byteStream().close();
        }
    }

    /* compiled from: Twttr */
    public class Builder {
        private Body body;
        private Handshake handshake;
        private com.squareup.okhttp.v_1_5_1.internal.http.Headers.Builder headers;
        private Response redirectedBy;
        private Request request;
        private StatusLine statusLine;

        public Builder() {
            this.headers = new com.squareup.okhttp.v_1_5_1.internal.http.Headers.Builder();
        }

        private Builder(Response response) {
            this.request = response.request;
            this.statusLine = response.statusLine;
            this.handshake = response.handshake;
            this.headers = response.headers.newBuilder();
            this.body = response.body;
            this.redirectedBy = response.redirectedBy;
        }

        public Builder request(Request request) {
            this.request = request;
            return this;
        }

        public Builder statusLine(StatusLine statusLine) {
            if (statusLine == null) {
                throw new IllegalArgumentException("statusLine == null");
            }
            this.statusLine = statusLine;
            return this;
        }

        public Builder statusLine(String str) {
            try {
                return statusLine(new StatusLine(str));
            } catch (Throwable e) {
                throw new IllegalArgumentException(e);
            }
        }

        public Builder handshake(Handshake handshake) {
            this.handshake = handshake;
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

        public Builder body(Body body) {
            this.body = body;
            return this;
        }

        public Builder setResponseSource(ResponseSource responseSource) {
            return header(OkHeaders.RESPONSE_SOURCE, responseSource + " " + this.statusLine.code());
        }

        public Builder redirectedBy(Response response) {
            this.redirectedBy = response;
            return this;
        }

        public Response build() {
            if (this.request == null) {
                throw new IllegalStateException("request == null");
            } else if (this.statusLine != null) {
                return new Response();
            } else {
                throw new IllegalStateException("statusLine == null");
            }
        }
    }

    /* compiled from: Twttr */
    class ParsedHeaders {
        Date lastModified;
        private Set<String> varyFields;

        private ParsedHeaders(Headers headers) {
            this.varyFields = Collections.emptySet();
            for (int i = 0; i < headers.size(); i++) {
                String name = headers.name(i);
                String value = headers.value(i);
                if ("Last-Modified".equalsIgnoreCase(name)) {
                    this.lastModified = HttpDate.parse(value);
                } else if ("Vary".equalsIgnoreCase(name)) {
                    if (this.varyFields.isEmpty()) {
                        this.varyFields = new TreeSet(String.CASE_INSENSITIVE_ORDER);
                    }
                    for (String trim : value.split(",")) {
                        this.varyFields.add(trim.trim());
                    }
                }
            }
        }
    }

    /* compiled from: Twttr */
    public interface Receiver {
        void onFailure(Failure failure);

        boolean onResponse(Response response) throws IOException;
    }

    private Response(Builder builder) {
        this.request = builder.request;
        this.statusLine = builder.statusLine;
        this.handshake = builder.handshake;
        this.headers = builder.headers.build();
        this.body = builder.body;
        this.redirectedBy = builder.redirectedBy;
    }

    public Request request() {
        return this.request;
    }

    public String statusLine() {
        return this.statusLine.getStatusLine();
    }

    public int code() {
        return this.statusLine.code();
    }

    public String statusMessage() {
        return this.statusLine.message();
    }

    public int httpMinorVersion() {
        return this.statusLine.httpMinorVersion();
    }

    public Handshake handshake() {
        return this.handshake;
    }

    public List<String> headers(String str) {
        return this.headers.values(str);
    }

    public String header(String str) {
        return header(str, null);
    }

    public String header(String str, String str2) {
        String str3 = this.headers.get(str);
        return str3 != null ? str3 : str2;
    }

    public Headers headers() {
        return this.headers;
    }

    public Body body() {
        return this.body;
    }

    public Builder newBuilder() {
        return new Builder();
    }

    public Response redirectedBy() {
        return this.redirectedBy;
    }

    public Set<String> getVaryFields() {
        return parsedHeaders().varyFields;
    }

    public boolean hasVaryAll() {
        return parsedHeaders().varyFields.contains("*");
    }

    public boolean varyMatches(Headers headers, Request request) {
        for (String str : parsedHeaders().varyFields) {
            if (!Util.equal(headers.values(str), request.headers(str))) {
                return false;
            }
        }
        return true;
    }

    public boolean validate(Response response) {
        if (response.code() == 304) {
            return true;
        }
        ParsedHeaders parsedHeaders = response.parsedHeaders();
        if (parsedHeaders().lastModified == null || parsedHeaders.lastModified == null || parsedHeaders.lastModified.getTime() >= parsedHeaders().lastModified.getTime()) {
            return false;
        }
        return true;
    }

    private ParsedHeaders parsedHeaders() {
        ParsedHeaders parsedHeaders = this.parsedHeaders;
        if (parsedHeaders != null) {
            return parsedHeaders;
        }
        parsedHeaders = new ParsedHeaders(null);
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
}
