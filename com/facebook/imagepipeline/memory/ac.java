package com.facebook.imagepipeline.memory;

import com.google.android.exoplayer.util.NalUnitUtil;
import defpackage.bx;
import java.io.InputStream;
import javax.annotation.concurrent.NotThreadSafe;

@NotThreadSafe
/* compiled from: Twttr */
public class ac extends InputStream {
    final PooledByteBuffer a;
    int b;
    int c;

    public ac(PooledByteBuffer pooledByteBuffer) {
        boolean z;
        if (pooledByteBuffer.c()) {
            z = false;
        } else {
            z = true;
        }
        bx.a(z);
        this.a = (PooledByteBuffer) bx.a((Object) pooledByteBuffer);
        this.b = 0;
        this.c = 0;
    }

    public int available() {
        return this.a.a() - this.b;
    }

    public void mark(int i) {
        this.c = this.b;
    }

    public boolean markSupported() {
        return true;
    }

    public int read() {
        if (available() <= 0) {
            return -1;
        }
        PooledByteBuffer pooledByteBuffer = this.a;
        int i = this.b;
        this.b = i + 1;
        return pooledByteBuffer.a(i) & NalUnitUtil.EXTENDED_SAR;
    }

    public int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }

    public int read(byte[] bArr, int i, int i2) {
        if (i < 0 || i2 < 0 || i + i2 > bArr.length) {
            throw new ArrayIndexOutOfBoundsException("length=" + bArr.length + "; regionStart=" + i + "; regionLength=" + i2);
        }
        int available = available();
        if (available <= 0) {
            return -1;
        }
        if (i2 <= 0) {
            return 0;
        }
        available = Math.min(available, i2);
        this.a.a(this.b, bArr, i, available);
        this.b += available;
        return available;
    }

    public void reset() {
        this.b = this.c;
    }

    public long skip(long j) {
        bx.a(j >= 0);
        int min = Math.min((int) j, available());
        this.b += min;
        return (long) min;
    }
}
