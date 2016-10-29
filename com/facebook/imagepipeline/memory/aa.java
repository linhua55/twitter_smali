package com.facebook.imagepipeline.memory;

import com.facebook.common.references.d;
import com.google.android.exoplayer.util.NalUnitUtil;
import defpackage.bx;
import defpackage.cb;
import java.io.IOException;
import java.io.InputStream;
import javax.annotation.concurrent.NotThreadSafe;

@NotThreadSafe
/* compiled from: Twttr */
public class aa extends InputStream {
    private final InputStream a;
    private final byte[] b;
    private final d<byte[]> c;
    private int d;
    private int e;
    private boolean f;

    public aa(InputStream inputStream, byte[] bArr, d<byte[]> dVar) {
        this.a = (InputStream) bx.a((Object) inputStream);
        this.b = (byte[]) bx.a((Object) bArr);
        this.c = (d) bx.a((Object) dVar);
        this.d = 0;
        this.e = 0;
        this.f = false;
    }

    public int read() throws IOException {
        bx.b(this.e <= this.d);
        b();
        if (!a()) {
            return -1;
        }
        byte[] bArr = this.b;
        int i = this.e;
        this.e = i + 1;
        return bArr[i] & NalUnitUtil.EXTENDED_SAR;
    }

    public int read(byte[] bArr, int i, int i2) throws IOException {
        bx.b(this.e <= this.d);
        b();
        if (!a()) {
            return -1;
        }
        int min = Math.min(this.d - this.e, i2);
        System.arraycopy(this.b, this.e, bArr, i, min);
        this.e += min;
        return min;
    }

    public int available() throws IOException {
        bx.b(this.e <= this.d);
        b();
        return (this.d - this.e) + this.a.available();
    }

    public void close() throws IOException {
        if (!this.f) {
            this.f = true;
            this.c.a(this.b);
            super.close();
        }
    }

    public long skip(long j) throws IOException {
        bx.b(this.e <= this.d);
        b();
        int i = this.d - this.e;
        if (((long) i) >= j) {
            this.e = (int) (((long) this.e) + j);
            return j;
        }
        this.e = this.d;
        return ((long) i) + this.a.skip(j - ((long) i));
    }

    private boolean a() throws IOException {
        if (this.e < this.d) {
            return true;
        }
        int read = this.a.read(this.b);
        if (read <= 0) {
            return false;
        }
        this.d = read;
        this.e = 0;
        return true;
    }

    private void b() throws IOException {
        if (this.f) {
            throw new IOException("stream already closed");
        }
    }

    protected void finalize() throws Throwable {
        if (!this.f) {
            cb.a("PooledByteInputStream", "Finalized without closing");
            close();
        }
        super.finalize();
    }
}
