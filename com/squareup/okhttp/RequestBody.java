package com.squareup.okhttp;

import com.squareup.okhttp.internal.Util;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.nio.charset.Charset;
import okio.ByteString;
import okio.i;
import okio.q;

/* compiled from: Twttr */
public abstract class RequestBody {

    /* compiled from: Twttr */
    /* renamed from: com.squareup.okhttp.RequestBody.1 */
    final class AnonymousClass1 extends RequestBody {
        final /* synthetic */ ByteString val$content;
        final /* synthetic */ MediaType val$contentType;

        AnonymousClass1(MediaType mediaType, ByteString byteString) {
            this.val$contentType = mediaType;
            this.val$content = byteString;
        }

        public MediaType contentType() {
            return this.val$contentType;
        }

        public long contentLength() throws IOException {
            return (long) this.val$content.f();
        }

        public void writeTo(i iVar) throws IOException {
            iVar.b(this.val$content);
        }
    }

    /* compiled from: Twttr */
    /* renamed from: com.squareup.okhttp.RequestBody.2 */
    final class AnonymousClass2 extends RequestBody {
        final /* synthetic */ int val$byteCount;
        final /* synthetic */ byte[] val$content;
        final /* synthetic */ MediaType val$contentType;
        final /* synthetic */ int val$offset;

        AnonymousClass2(MediaType mediaType, int i, byte[] bArr, int i2) {
            this.val$contentType = mediaType;
            this.val$byteCount = i;
            this.val$content = bArr;
            this.val$offset = i2;
        }

        public MediaType contentType() {
            return this.val$contentType;
        }

        public long contentLength() {
            return (long) this.val$byteCount;
        }

        public void writeTo(i iVar) throws IOException {
            iVar.c(this.val$content, this.val$offset, this.val$byteCount);
        }
    }

    /* compiled from: Twttr */
    /* renamed from: com.squareup.okhttp.RequestBody.3 */
    final class AnonymousClass3 extends RequestBody {
        final /* synthetic */ MediaType val$contentType;
        final /* synthetic */ File val$file;

        AnonymousClass3(MediaType mediaType, File file) {
            this.val$contentType = mediaType;
            this.val$file = file;
        }

        public MediaType contentType() {
            return this.val$contentType;
        }

        public long contentLength() {
            return this.val$file.length();
        }

        public void writeTo(i iVar) throws IOException {
            Closeable closeable = null;
            try {
                closeable = q.a(this.val$file);
                iVar.a(closeable);
            } finally {
                Util.closeQuietly(closeable);
            }
        }
    }

    public abstract MediaType contentType();

    public abstract void writeTo(i iVar) throws IOException;

    public long contentLength() throws IOException {
        return -1;
    }

    public static RequestBody create(MediaType mediaType, String str) {
        Charset charset = Util.UTF_8;
        if (mediaType != null) {
            charset = mediaType.charset();
            if (charset == null) {
                charset = Util.UTF_8;
                mediaType = MediaType.parse(mediaType + "; charset=utf-8");
            }
        }
        return create(mediaType, str.getBytes(charset));
    }

    public static RequestBody create(MediaType mediaType, ByteString byteString) {
        return new AnonymousClass1(mediaType, byteString);
    }

    public static RequestBody create(MediaType mediaType, byte[] bArr) {
        return create(mediaType, bArr, 0, bArr.length);
    }

    public static RequestBody create(MediaType mediaType, byte[] bArr, int i, int i2) {
        if (bArr == null) {
            throw new NullPointerException("content == null");
        }
        Util.checkOffsetAndCount((long) bArr.length, (long) i, (long) i2);
        return new AnonymousClass2(mediaType, i2, bArr, i);
    }

    public static RequestBody create(MediaType mediaType, File file) {
        if (file != null) {
            return new AnonymousClass3(mediaType, file);
        }
        throw new NullPointerException("content == null");
    }
}
