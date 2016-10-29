package com.squareup.okhttp;

import com.facebook.shimmer.b;
import com.google.android.exoplayer.upstream.NetworkLock;
import com.squareup.okhttp.internal.Util;
import defpackage.bdd;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import okio.ByteString;
import okio.f;
import okio.i;

/* compiled from: Twttr */
public final class MultipartBuilder {
    public static final MediaType ALTERNATIVE;
    private static final byte[] COLONSPACE;
    private static final byte[] CRLF;
    private static final byte[] DASHDASH;
    public static final MediaType DIGEST;
    public static final MediaType FORM;
    public static final MediaType MIXED;
    public static final MediaType PARALLEL;
    private final ByteString boundary;
    private final List<RequestBody> partBodies;
    private final List<Headers> partHeaders;
    private MediaType type;

    /* compiled from: Twttr */
    final class MultipartRequestBody extends RequestBody {
        private final ByteString boundary;
        private long contentLength;
        private final MediaType contentType;
        private final List<RequestBody> partBodies;
        private final List<Headers> partHeaders;

        public MultipartRequestBody(MediaType mediaType, ByteString byteString, List<Headers> list, List<RequestBody> list2) {
            this.contentLength = -1;
            if (mediaType == null) {
                throw new NullPointerException("type == null");
            }
            this.boundary = byteString;
            this.contentType = MediaType.parse(mediaType + "; boundary=" + byteString.a());
            this.partHeaders = Util.immutableList((List) list);
            this.partBodies = Util.immutableList((List) list2);
        }

        public MediaType contentType() {
            return this.contentType;
        }

        public long contentLength() throws IOException {
            long j = this.contentLength;
            if (j != -1) {
                return j;
            }
            j = writeOrCountBytes(null, true);
            this.contentLength = j;
            return j;
        }

        private long writeOrCountBytes(i iVar, boolean z) throws IOException {
            f fVar;
            long j = 0;
            if (z) {
                f fVar2 = new f();
                fVar = fVar2;
                iVar = fVar2;
            } else {
                fVar = null;
            }
            int size = this.partHeaders.size();
            int i = 0;
            while (i < size) {
                Headers headers = (Headers) this.partHeaders.get(i);
                RequestBody requestBody = (RequestBody) this.partBodies.get(i);
                iVar.c(MultipartBuilder.DASHDASH);
                iVar.b(this.boundary);
                iVar.c(MultipartBuilder.CRLF);
                if (headers != null) {
                    int size2 = headers.size();
                    for (int i2 = 0; i2 < size2; i2++) {
                        iVar.b(headers.name(i2)).c(MultipartBuilder.COLONSPACE).b(headers.value(i2)).c(MultipartBuilder.CRLF);
                    }
                }
                MediaType contentType = requestBody.contentType();
                if (contentType != null) {
                    iVar.b("Content-Type: ").b(contentType.toString()).c(MultipartBuilder.CRLF);
                }
                long contentLength = requestBody.contentLength();
                if (contentLength != -1) {
                    iVar.b("Content-Length: ").l(contentLength).c(MultipartBuilder.CRLF);
                } else if (z) {
                    fVar.u();
                    return -1;
                }
                iVar.c(MultipartBuilder.CRLF);
                if (z) {
                    contentLength += j;
                } else {
                    ((RequestBody) this.partBodies.get(i)).writeTo(iVar);
                    contentLength = j;
                }
                iVar.c(MultipartBuilder.CRLF);
                i++;
                j = contentLength;
            }
            iVar.c(MultipartBuilder.DASHDASH);
            iVar.b(this.boundary);
            iVar.c(MultipartBuilder.DASHDASH);
            iVar.c(MultipartBuilder.CRLF);
            if (!z) {
                return j;
            }
            j += fVar.a();
            fVar.u();
            return j;
        }

        public void writeTo(i iVar) throws IOException {
            writeOrCountBytes(iVar, false);
        }
    }

    static {
        MIXED = MediaType.parse("multipart/mixed");
        ALTERNATIVE = MediaType.parse("multipart/alternative");
        DIGEST = MediaType.parse("multipart/digest");
        PARALLEL = MediaType.parse("multipart/parallel");
        FORM = MediaType.parse("multipart/form-data");
        COLONSPACE = new byte[]{(byte) 58, ClosedCaptionCtrl.RESUME_CAPTION_LOADING};
        CRLF = new byte[]{(byte) 13, (byte) 10};
        DASHDASH = new byte[]{ClosedCaptionCtrl.CARRIAGE_RETURN, ClosedCaptionCtrl.CARRIAGE_RETURN};
    }

    public MultipartBuilder() {
        this(UUID.randomUUID().toString());
    }

    public MultipartBuilder(String str) {
        this.type = MIXED;
        this.partHeaders = new ArrayList();
        this.partBodies = new ArrayList();
        this.boundary = ByteString.a(str);
    }

    public MultipartBuilder type(MediaType mediaType) {
        if (mediaType == null) {
            throw new NullPointerException("type == null");
        } else if (mediaType.type().equals("multipart")) {
            this.type = mediaType;
            return this;
        } else {
            throw new IllegalArgumentException("multipart != " + mediaType);
        }
    }

    public MultipartBuilder addPart(RequestBody requestBody) {
        return addPart(null, requestBody);
    }

    public MultipartBuilder addPart(Headers headers, RequestBody requestBody) {
        if (requestBody == null) {
            throw new NullPointerException("body == null");
        } else if (headers != null && headers.get("Content-Type") != null) {
            throw new IllegalArgumentException("Unexpected header: Content-Type");
        } else if (headers == null || headers.get("Content-Length") == null) {
            this.partHeaders.add(headers);
            this.partBodies.add(requestBody);
            return this;
        } else {
            throw new IllegalArgumentException("Unexpected header: Content-Length");
        }
    }

    private static StringBuilder appendQuotedString(StringBuilder stringBuilder, String str) {
        stringBuilder.append('\"');
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            switch (charAt) {
                case NetworkLock.DOWNLOAD_PRIORITY /*10*/:
                    stringBuilder.append("%0A");
                    break;
                case b.ShimmerFrameLayout_shape /*13*/:
                    stringBuilder.append("%0D");
                    break;
                case bdd.AppCompatTheme_actionModePasteDrawable /*34*/:
                    stringBuilder.append("%22");
                    break;
                default:
                    stringBuilder.append(charAt);
                    break;
            }
        }
        stringBuilder.append('\"');
        return stringBuilder;
    }

    public MultipartBuilder addFormDataPart(String str, String str2) {
        return addFormDataPart(str, null, RequestBody.create(null, str2));
    }

    public MultipartBuilder addFormDataPart(String str, String str2, RequestBody requestBody) {
        if (str == null) {
            throw new NullPointerException("name == null");
        }
        StringBuilder stringBuilder = new StringBuilder("form-data; name=");
        appendQuotedString(stringBuilder, str);
        if (str2 != null) {
            stringBuilder.append("; filename=");
            appendQuotedString(stringBuilder, str2);
        }
        return addPart(Headers.of("Content-Disposition", stringBuilder.toString()), requestBody);
    }

    public RequestBody build() {
        if (!this.partHeaders.isEmpty()) {
            return new MultipartRequestBody(this.type, this.boundary, this.partHeaders, this.partBodies);
        }
        throw new IllegalStateException("Multipart body must have at least one part.");
    }
}
