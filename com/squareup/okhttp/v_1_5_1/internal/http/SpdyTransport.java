package com.squareup.okhttp.v_1_5_1.internal.http;

import com.squareup.okhttp.v_1_5_1.Protocol;
import com.squareup.okhttp.v_1_5_1.internal.Util;
import com.squareup.okhttp.v_1_5_1.internal.http.Response.Builder;
import com.squareup.okhttp.v_1_5_1.internal.okio.ByteString;
import com.squareup.okhttp.v_1_5_1.internal.okio.Deadline;
import com.squareup.okhttp.v_1_5_1.internal.okio.OkBuffer;
import com.squareup.okhttp.v_1_5_1.internal.okio.Okio;
import com.squareup.okhttp.v_1_5_1.internal.okio.Sink;
import com.squareup.okhttp.v_1_5_1.internal.okio.Source;
import com.squareup.okhttp.v_1_5_1.internal.spdy.ErrorCode;
import com.squareup.okhttp.v_1_5_1.internal.spdy.Header;
import com.squareup.okhttp.v_1_5_1.internal.spdy.SpdyConnection;
import com.squareup.okhttp.v_1_5_1.internal.spdy.SpdyStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.CacheRequest;
import java.net.ProtocolException;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Set;

/* compiled from: Twttr */
public final class SpdyTransport implements Transport {
    private final HttpEngine httpEngine;
    private final SpdyConnection spdyConnection;
    private SpdyStream stream;

    /* compiled from: Twttr */
    class SpdySource implements Source {
        private final OutputStream cacheBody;
        private final CacheRequest cacheRequest;
        private boolean closed;
        private boolean inputExhausted;
        private final Source source;
        private final SpdyStream stream;

        SpdySource(SpdyStream spdyStream, CacheRequest cacheRequest) throws IOException {
            this.stream = spdyStream;
            this.source = spdyStream.getSource();
            OutputStream body = cacheRequest != null ? cacheRequest.getBody() : null;
            if (body == null) {
                cacheRequest = null;
            }
            this.cacheBody = body;
            this.cacheRequest = cacheRequest;
        }

        public long read(OkBuffer okBuffer, long j) throws IOException {
            if (j < 0) {
                throw new IllegalArgumentException("byteCount < 0: " + j);
            } else if (this.closed) {
                throw new IllegalStateException("closed");
            } else if (this.inputExhausted) {
                return -1;
            } else {
                long read = this.source.read(okBuffer, j);
                if (read == -1) {
                    this.inputExhausted = true;
                    if (this.cacheRequest != null) {
                        this.cacheBody.close();
                    }
                    return -1;
                } else if (this.cacheBody == null) {
                    return read;
                } else {
                    Okio.copy(okBuffer, okBuffer.size() - read, read, this.cacheBody);
                    return read;
                }
            }
        }

        public Source deadline(Deadline deadline) {
            this.source.deadline(deadline);
            return this;
        }

        public void close() throws IOException {
            if (!this.closed) {
                if (!(this.inputExhausted || this.cacheBody == null)) {
                    discardStream();
                }
                this.closed = true;
                if (!this.inputExhausted) {
                    this.stream.closeLater(ErrorCode.CANCEL);
                    if (this.cacheRequest != null) {
                        this.cacheRequest.abort();
                    }
                }
            }
        }

        private boolean discardStream() {
            long readTimeoutMillis;
            try {
                readTimeoutMillis = this.stream.getReadTimeoutMillis();
                this.stream.setReadTimeout(readTimeoutMillis);
                this.stream.setReadTimeout(100);
                Util.skipAll(this, 100);
                this.stream.setReadTimeout(readTimeoutMillis);
                return true;
            } catch (IOException e) {
                return false;
            } catch (Throwable th) {
                this.stream.setReadTimeout(readTimeoutMillis);
            }
        }
    }

    public SpdyTransport(HttpEngine httpEngine, SpdyConnection spdyConnection) {
        this.httpEngine = httpEngine;
        this.spdyConnection = spdyConnection;
    }

    public Sink createRequestBody(Request request) throws IOException {
        writeRequestHeaders(request);
        return this.stream.getSink();
    }

    public void writeRequestHeaders(Request request) throws IOException {
        if (this.stream == null) {
            this.httpEngine.writingRequestHeaders();
            this.stream = this.spdyConnection.newStream(writeNameValueBlock(request, this.spdyConnection.getProtocol(), RequestLine.version(this.httpEngine.getConnection().getHttpMinorVersion())), this.httpEngine.hasRequestBody(), true);
            this.stream.setReadTimeout((long) this.httpEngine.client.getReadTimeout());
        }
    }

    public void writeRequestBody(RetryableSink retryableSink) throws IOException {
        throw new UnsupportedOperationException();
    }

    public void flushRequest() throws IOException {
        this.stream.getSink().close();
    }

    public Builder readResponseHeaders() throws IOException {
        return readNameValueBlock(this.stream.getResponseHeaders(), this.spdyConnection.getProtocol());
    }

    public static List<Header> writeNameValueBlock(Request request, Protocol protocol, String str) {
        Headers headers = request.headers();
        List<Header> arrayList = new ArrayList(headers.size() + 10);
        arrayList.add(new Header(Header.TARGET_METHOD, request.method()));
        arrayList.add(new Header(Header.TARGET_PATH, RequestLine.requestPath(request.url())));
        String hostHeader = HttpEngine.hostHeader(request.url());
        if (Protocol.SPDY_3 == protocol) {
            arrayList.add(new Header(Header.VERSION, str));
            arrayList.add(new Header(Header.TARGET_HOST, hostHeader));
        } else if (Protocol.HTTP_2 == protocol) {
            arrayList.add(new Header(Header.TARGET_AUTHORITY, hostHeader));
        } else {
            throw new AssertionError();
        }
        arrayList.add(new Header(Header.TARGET_SCHEME, request.url().getProtocol()));
        Set linkedHashSet = new LinkedHashSet();
        for (int i = 0; i < headers.size(); i++) {
            ByteString encodeUtf8 = ByteString.encodeUtf8(headers.name(i).toLowerCase(Locale.US));
            String value = headers.value(i);
            if (!(isProhibitedHeader(protocol, encodeUtf8) || encodeUtf8.equals(Header.TARGET_METHOD) || encodeUtf8.equals(Header.TARGET_PATH) || encodeUtf8.equals(Header.TARGET_SCHEME) || encodeUtf8.equals(Header.TARGET_AUTHORITY) || encodeUtf8.equals(Header.TARGET_HOST) || encodeUtf8.equals(Header.VERSION))) {
                if (linkedHashSet.add(encodeUtf8)) {
                    arrayList.add(new Header(encodeUtf8, value));
                } else {
                    for (int i2 = 0; i2 < arrayList.size(); i2++) {
                        if (((Header) arrayList.get(i2)).name.equals(encodeUtf8)) {
                            arrayList.set(i2, new Header(encodeUtf8, joinOnNull(((Header) arrayList.get(i2)).value.utf8(), value)));
                            break;
                        }
                    }
                }
            }
        }
        return arrayList;
    }

    private static String joinOnNull(String str, String str2) {
        return '\u0000' + str2;
    }

    public static Builder readNameValueBlock(List<Header> list, Protocol protocol) throws IOException {
        String str = null;
        String str2 = "HTTP/1.1";
        Headers.Builder builder = new Headers.Builder();
        builder.set(OkHeaders.SELECTED_PROTOCOL, protocol.name.utf8());
        int i = 0;
        while (i < list.size()) {
            ByteString byteString = ((Header) list.get(i)).name;
            String utf8 = ((Header) list.get(i)).value.utf8();
            String str3 = str2;
            int i2 = 0;
            while (i2 < utf8.length()) {
                int indexOf = utf8.indexOf(0, i2);
                if (indexOf == -1) {
                    indexOf = utf8.length();
                }
                str2 = utf8.substring(i2, indexOf);
                if (!byteString.equals(Header.RESPONSE_STATUS)) {
                    if (byteString.equals(Header.VERSION)) {
                        str3 = str2;
                        str2 = str;
                    } else {
                        if (!isProhibitedHeader(protocol, byteString)) {
                            builder.add(byteString.utf8(), str2);
                        }
                        str2 = str;
                    }
                }
                str = str2;
                i2 = indexOf + 1;
            }
            i++;
            str2 = str3;
        }
        if (str == null) {
            throw new ProtocolException("Expected ':status' header not present");
        } else if (str2 != null) {
            return new Builder().statusLine(new StatusLine(str2 + " " + str)).headers(builder.build());
        } else {
            throw new ProtocolException("Expected ':version' header not present");
        }
    }

    public void emptyTransferStream() {
    }

    public Source getTransferStream(CacheRequest cacheRequest) throws IOException {
        return new SpdySource(this.stream, cacheRequest);
    }

    public void releaseConnectionOnIdle() {
    }

    public boolean canReuseConnection() {
        return true;
    }

    private static boolean isProhibitedHeader(Protocol protocol, ByteString byteString) {
        if (protocol == Protocol.SPDY_3) {
            if (byteString.equalsAscii("connection") || byteString.equalsAscii("host") || byteString.equalsAscii("keep-alive") || byteString.equalsAscii("proxy-connection") || byteString.equalsAscii("transfer-encoding")) {
                return true;
            }
            return false;
        } else if (protocol != Protocol.HTTP_2) {
            throw new AssertionError(protocol);
        } else if (byteString.equalsAscii("connection") || byteString.equalsAscii("host") || byteString.equalsAscii("keep-alive") || byteString.equalsAscii("proxy-connection") || byteString.equalsAscii("te") || byteString.equalsAscii("transfer-encoding") || byteString.equalsAscii("encoding") || byteString.equalsAscii("upgrade")) {
            return true;
        } else {
            return false;
        }
    }
}
