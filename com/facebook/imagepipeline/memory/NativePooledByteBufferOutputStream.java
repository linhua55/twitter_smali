package com.facebook.imagepipeline.memory;

import com.facebook.common.references.a;
import defpackage.bx;
import java.io.IOException;
import javax.annotation.concurrent.NotThreadSafe;

@NotThreadSafe
/* compiled from: Twttr */
public class NativePooledByteBufferOutputStream extends ad {
    private final o a;
    private a<NativeMemoryChunk> b;
    private int c;

    /* compiled from: Twttr */
    public class InvalidStreamException extends RuntimeException {
        public InvalidStreamException() {
            super("OutputStream no longer valid");
        }
    }

    public /* synthetic */ PooledByteBuffer c() {
        return a();
    }

    public NativePooledByteBufferOutputStream(o oVar) {
        this(oVar, oVar.f());
    }

    public NativePooledByteBufferOutputStream(o oVar, int i) {
        boolean z;
        if (i > 0) {
            z = true;
        } else {
            z = false;
        }
        bx.a(z);
        this.a = (o) bx.a((Object) oVar);
        this.c = 0;
        this.b = a.a(this.a.a(i), this.a);
    }

    public p a() {
        d();
        return new p(this.b, this.c);
    }

    public int b() {
        return this.c;
    }

    public void write(int i) throws IOException {
        write(new byte[]{(byte) i});
    }

    public void write(byte[] bArr, int i, int i2) throws IOException {
        if (i < 0 || i2 < 0 || i + i2 > bArr.length) {
            throw new ArrayIndexOutOfBoundsException("length=" + bArr.length + "; regionStart=" + i + "; regionLength=" + i2);
        }
        d();
        a(this.c + i2);
        ((NativeMemoryChunk) this.b.a()).a(this.c, bArr, i, i2);
        this.c += i2;
    }

    public void close() {
        a.c(this.b);
        this.b = null;
        this.c = -1;
        super.close();
    }

    void a(int i) {
        d();
        if (i > ((NativeMemoryChunk) this.b.a()).b()) {
            NativeMemoryChunk nativeMemoryChunk = (NativeMemoryChunk) this.a.a(i);
            ((NativeMemoryChunk) this.b.a()).a(0, nativeMemoryChunk, 0, this.c);
            this.b.close();
            this.b = a.a(nativeMemoryChunk, this.a);
        }
    }

    private void d() {
        if (!a.a(this.b)) {
            throw new InvalidStreamException();
        }
    }
}
