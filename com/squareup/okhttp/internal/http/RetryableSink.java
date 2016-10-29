package com.squareup.okhttp.internal.http;

import com.squareup.okhttp.internal.Util;
import java.io.IOException;
import java.net.ProtocolException;
import okio.aa;
import okio.ac;
import okio.f;

/* compiled from: Twttr */
public final class RetryableSink implements aa {
    private boolean closed;
    private final f content;
    private final int limit;

    public RetryableSink(int i) {
        this.content = new f();
        this.limit = i;
    }

    public RetryableSink() {
        this(-1);
    }

    public void close() throws IOException {
        if (!this.closed) {
            this.closed = true;
            if (this.content.a() < ((long) this.limit)) {
                throw new ProtocolException("content-length promised " + this.limit + " bytes, but received " + this.content.a());
            }
        }
    }

    public void write(f fVar, long j) throws IOException {
        if (this.closed) {
            throw new IllegalStateException("closed");
        }
        Util.checkOffsetAndCount(fVar.a(), 0, j);
        if (this.limit == -1 || this.content.a() <= ((long) this.limit) - j) {
            this.content.write(fVar, j);
            return;
        }
        throw new ProtocolException("exceeded content-length limit of " + this.limit + " bytes");
    }

    public void flush() throws IOException {
    }

    public ac timeout() {
        return ac.NONE;
    }

    public long contentLength() throws IOException {
        return this.content.a();
    }

    public void writeToSocket(aa aaVar) throws IOException {
        f fVar = new f();
        this.content.a(fVar, 0, this.content.a());
        aaVar.write(fVar, fVar.a());
    }
}
