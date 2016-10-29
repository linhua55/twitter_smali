package com.squareup.okhttp.internal.http;

import com.squareup.okhttp.Headers;
import com.squareup.okhttp.Protocol;
import com.squareup.okhttp.Request;
import com.squareup.okhttp.Response;
import com.squareup.okhttp.Response.Builder;
import com.squareup.okhttp.ResponseBody;
import com.squareup.okhttp.internal.Util;
import com.squareup.okhttp.internal.framed.ErrorCode;
import com.squareup.okhttp.internal.framed.FramedConnection;
import com.squareup.okhttp.internal.framed.FramedStream;
import com.squareup.okhttp.internal.framed.Header;
import java.io.IOException;
import java.net.ProtocolException;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import okio.ByteString;
import okio.aa;
import okio.ab;
import okio.m;
import okio.q;

/* compiled from: Twttr */
public final class Http2xStream implements HttpStream {
    private static final ByteString CONNECTION;
    private static final ByteString ENCODING;
    private static final ByteString HOST;
    private static final List<ByteString> HTTP_2_SKIPPED_REQUEST_HEADERS;
    private static final List<ByteString> HTTP_2_SKIPPED_RESPONSE_HEADERS;
    private static final ByteString KEEP_ALIVE;
    private static final ByteString PROXY_CONNECTION;
    private static final List<ByteString> SPDY_3_SKIPPED_REQUEST_HEADERS;
    private static final List<ByteString> SPDY_3_SKIPPED_RESPONSE_HEADERS;
    private static final ByteString TE;
    private static final ByteString TRANSFER_ENCODING;
    private static final ByteString UPGRADE;
    private final FramedConnection framedConnection;
    private HttpEngine httpEngine;
    private FramedStream stream;
    private final StreamAllocation streamAllocation;

    /* compiled from: Twttr */
    class StreamFinishingSource extends m {
        public StreamFinishingSource(ab abVar) {
            super(abVar);
        }

        public void close() throws IOException {
            Http2xStream.this.streamAllocation.streamFinished(Http2xStream.this);
            super.close();
        }
    }

    static {
        CONNECTION = ByteString.a("connection");
        HOST = ByteString.a("host");
        KEEP_ALIVE = ByteString.a("keep-alive");
        PROXY_CONNECTION = ByteString.a("proxy-connection");
        TRANSFER_ENCODING = ByteString.a("transfer-encoding");
        TE = ByteString.a("te");
        ENCODING = ByteString.a("encoding");
        UPGRADE = ByteString.a("upgrade");
        SPDY_3_SKIPPED_REQUEST_HEADERS = Util.immutableList(CONNECTION, HOST, KEEP_ALIVE, PROXY_CONNECTION, TRANSFER_ENCODING, Header.TARGET_METHOD, Header.TARGET_PATH, Header.TARGET_SCHEME, Header.TARGET_AUTHORITY, Header.TARGET_HOST, Header.VERSION);
        SPDY_3_SKIPPED_RESPONSE_HEADERS = Util.immutableList(CONNECTION, HOST, KEEP_ALIVE, PROXY_CONNECTION, TRANSFER_ENCODING);
        HTTP_2_SKIPPED_REQUEST_HEADERS = Util.immutableList(CONNECTION, HOST, KEEP_ALIVE, PROXY_CONNECTION, TE, TRANSFER_ENCODING, ENCODING, UPGRADE, Header.TARGET_METHOD, Header.TARGET_PATH, Header.TARGET_SCHEME, Header.TARGET_AUTHORITY, Header.TARGET_HOST, Header.VERSION);
        HTTP_2_SKIPPED_RESPONSE_HEADERS = Util.immutableList(CONNECTION, HOST, KEEP_ALIVE, PROXY_CONNECTION, TE, TRANSFER_ENCODING, ENCODING, UPGRADE);
    }

    public Http2xStream(StreamAllocation streamAllocation, FramedConnection framedConnection) {
        this.streamAllocation = streamAllocation;
        this.framedConnection = framedConnection;
    }

    public void setHttpEngine(HttpEngine httpEngine) {
        this.httpEngine = httpEngine;
    }

    public aa createRequestBody(Request request, long j) throws IOException {
        return this.stream.getSink();
    }

    public void writeRequestHeaders(Request request) throws IOException {
        if (this.stream == null) {
            this.httpEngine.writingRequestHeaders();
            this.stream = this.framedConnection.newStream(this.framedConnection.getProtocol() == Protocol.HTTP_2 ? http2HeadersList(request) : spdy3HeadersList(request), this.httpEngine.permitsRequestBody(request), true);
            this.stream.readTimeout().timeout((long) this.httpEngine.client.getReadTimeout(), TimeUnit.MILLISECONDS);
            this.stream.writeTimeout().timeout((long) this.httpEngine.client.getWriteTimeout(), TimeUnit.MILLISECONDS);
        }
    }

    public void writeRequestBody(RetryableSink retryableSink) throws IOException {
        retryableSink.writeToSocket(this.stream.getSink());
    }

    public void finishRequest() throws IOException {
        this.stream.getSink().close();
    }

    public Builder readResponseHeaders() throws IOException {
        return this.framedConnection.getProtocol() == Protocol.HTTP_2 ? readHttp2HeadersList(this.stream.getResponseHeaders()) : readSpdy3HeadersList(this.stream.getResponseHeaders());
    }

    public static List<Header> spdy3HeadersList(Request request) {
        Headers headers = request.headers();
        List<Header> arrayList = new ArrayList(headers.size() + 5);
        arrayList.add(new Header(Header.TARGET_METHOD, request.method()));
        arrayList.add(new Header(Header.TARGET_PATH, RequestLine.requestPath(request.httpUrl())));
        arrayList.add(new Header(Header.VERSION, "HTTP/1.1"));
        arrayList.add(new Header(Header.TARGET_HOST, Util.hostHeader(request.httpUrl())));
        arrayList.add(new Header(Header.TARGET_SCHEME, request.httpUrl().scheme()));
        Set linkedHashSet = new LinkedHashSet();
        int size = headers.size();
        for (int i = 0; i < size; i++) {
            ByteString a = ByteString.a(headers.name(i).toLowerCase(Locale.US));
            if (!SPDY_3_SKIPPED_REQUEST_HEADERS.contains(a)) {
                String value = headers.value(i);
                if (linkedHashSet.add(a)) {
                    arrayList.add(new Header(a, value));
                } else {
                    for (int i2 = 0; i2 < arrayList.size(); i2++) {
                        if (((Header) arrayList.get(i2)).name.equals(a)) {
                            arrayList.set(i2, new Header(a, joinOnNull(((Header) arrayList.get(i2)).value.a(), value)));
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

    public static List<Header> http2HeadersList(Request request) {
        Headers headers = request.headers();
        List<Header> arrayList = new ArrayList(headers.size() + 4);
        arrayList.add(new Header(Header.TARGET_METHOD, request.method()));
        arrayList.add(new Header(Header.TARGET_PATH, RequestLine.requestPath(request.httpUrl())));
        arrayList.add(new Header(Header.TARGET_AUTHORITY, Util.hostHeader(request.httpUrl())));
        arrayList.add(new Header(Header.TARGET_SCHEME, request.httpUrl().scheme()));
        int size = headers.size();
        for (int i = 0; i < size; i++) {
            ByteString a = ByteString.a(headers.name(i).toLowerCase(Locale.US));
            if (!HTTP_2_SKIPPED_REQUEST_HEADERS.contains(a)) {
                arrayList.add(new Header(a, headers.value(i)));
            }
        }
        return arrayList;
    }

    public static Builder readSpdy3HeadersList(List<Header> list) throws IOException {
        String str = null;
        String str2 = "HTTP/1.1";
        Headers.Builder builder = new Headers.Builder();
        int size = list.size();
        int i = 0;
        while (i < size) {
            ByteString byteString = ((Header) list.get(i)).name;
            String a = ((Header) list.get(i)).value.a();
            String str3 = str2;
            int i2 = 0;
            while (i2 < a.length()) {
                int indexOf = a.indexOf(0, i2);
                if (indexOf == -1) {
                    indexOf = a.length();
                }
                str2 = a.substring(i2, indexOf);
                if (!byteString.equals(Header.RESPONSE_STATUS)) {
                    if (byteString.equals(Header.VERSION)) {
                        str3 = str2;
                        str2 = str;
                    } else {
                        if (!SPDY_3_SKIPPED_RESPONSE_HEADERS.contains(byteString)) {
                            builder.add(byteString.a(), str2);
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
        }
        StatusLine parse = StatusLine.parse(str2 + " " + str);
        return new Builder().protocol(Protocol.SPDY_3).code(parse.code).message(parse.message).headers(builder.build());
    }

    public static Builder readHttp2HeadersList(List<Header> list) throws IOException {
        String str = null;
        Headers.Builder builder = new Headers.Builder();
        int size = list.size();
        int i = 0;
        while (i < size) {
            ByteString byteString = ((Header) list.get(i)).name;
            String a = ((Header) list.get(i)).value.a();
            if (!byteString.equals(Header.RESPONSE_STATUS)) {
                if (!HTTP_2_SKIPPED_RESPONSE_HEADERS.contains(byteString)) {
                    builder.add(byteString.a(), a);
                }
                a = str;
            }
            i++;
            str = a;
        }
        if (str == null) {
            throw new ProtocolException("Expected ':status' header not present");
        }
        StatusLine parse = StatusLine.parse("HTTP/1.1 " + str);
        return new Builder().protocol(Protocol.HTTP_2).code(parse.code).message(parse.message).headers(builder.build());
    }

    public ResponseBody openResponseBody(Response response) throws IOException {
        return new RealResponseBody(response.headers(), q.a(new StreamFinishingSource(this.stream.getSource())));
    }

    public void cancel() {
        if (this.stream != null) {
            this.stream.closeLater(ErrorCode.CANCEL);
        }
    }
}
