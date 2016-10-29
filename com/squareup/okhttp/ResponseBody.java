package com.squareup.okhttp;

import com.squareup.okhttp.internal.Util;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.nio.charset.Charset;
import okio.f;
import okio.j;

/* compiled from: Twttr */
public abstract class ResponseBody implements Closeable {
    private Reader reader;

    /* compiled from: Twttr */
    /* renamed from: com.squareup.okhttp.ResponseBody.1 */
    final class AnonymousClass1 extends ResponseBody {
        final /* synthetic */ j val$content;
        final /* synthetic */ long val$contentLength;
        final /* synthetic */ MediaType val$contentType;

        AnonymousClass1(MediaType mediaType, long j, j jVar) {
            this.val$contentType = mediaType;
            this.val$contentLength = j;
            this.val$content = jVar;
        }

        public MediaType contentType() {
            return this.val$contentType;
        }

        public long contentLength() {
            return this.val$contentLength;
        }

        public j source() {
            return this.val$content;
        }
    }

    public abstract long contentLength() throws IOException;

    public abstract MediaType contentType();

    public abstract j source() throws IOException;

    public final InputStream byteStream() throws IOException {
        return source().g();
    }

    public final byte[] bytes() throws IOException {
        long contentLength = contentLength();
        if (contentLength > 2147483647L) {
            throw new IOException("Cannot buffer entire body for content length: " + contentLength);
        }
        Closeable source = source();
        try {
            byte[] t = source.t();
            if (contentLength == -1 || contentLength == ((long) t.length)) {
                return t;
            }
            throw new IOException("Content-Length and stream length disagree");
        } finally {
            Util.closeQuietly(source);
        }
    }

    public final Reader charStream() throws IOException {
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
        source().close();
    }

    public static ResponseBody create(MediaType mediaType, String str) {
        Charset charset = Util.UTF_8;
        if (mediaType != null) {
            charset = mediaType.charset();
            if (charset == null) {
                charset = Util.UTF_8;
                mediaType = MediaType.parse(mediaType + "; charset=utf-8");
            }
        }
        f a = new f().a(str, charset);
        return create(mediaType, a.a(), a);
    }

    public static ResponseBody create(MediaType mediaType, byte[] bArr) {
        return create(mediaType, (long) bArr.length, new f().b(bArr));
    }

    public static ResponseBody create(MediaType mediaType, long j, j jVar) {
        if (jVar != null) {
            return new AnonymousClass1(mediaType, j, jVar);
        }
        throw new NullPointerException("source == null");
    }
}
