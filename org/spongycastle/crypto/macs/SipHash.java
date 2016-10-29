package org.spongycastle.crypto.macs;

import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.DataLengthException;
import org.spongycastle.crypto.Mac;
import org.spongycastle.crypto.params.KeyParameter;
import org.spongycastle.util.Pack;

/* compiled from: Twttr */
public class SipHash implements Mac {
    protected final int a;
    protected final int b;
    protected long c;
    protected long d;
    protected long e;
    protected long f;
    protected long g;
    protected long h;
    protected long i;
    protected int j;
    protected int k;

    public SipHash() {
        this.i = 0;
        this.j = 0;
        this.k = 0;
        this.a = 2;
        this.b = 4;
    }

    public SipHash(int i, int i2) {
        this.i = 0;
        this.j = 0;
        this.k = 0;
        this.a = i;
        this.b = i2;
    }

    public String a() {
        return "SipHash-" + this.a + "-" + this.b;
    }

    public int b() {
        return 8;
    }

    public void a(CipherParameters cipherParameters) throws IllegalArgumentException {
        if (cipherParameters instanceof KeyParameter) {
            byte[] a = ((KeyParameter) cipherParameters).a();
            if (a.length != 16) {
                throw new IllegalArgumentException("'params' must be a 128-bit key");
            }
            this.c = Pack.d(a, 0);
            this.d = Pack.d(a, 8);
            c();
            return;
        }
        throw new IllegalArgumentException("'params' must be an instance of KeyParameter");
    }

    public void a(byte b) throws IllegalStateException {
        this.i >>>= 8;
        this.i |= (((long) b) & 255) << 56;
        int i = this.j + 1;
        this.j = i;
        if (i == 8) {
            e();
            this.j = 0;
        }
    }

    public void a(byte[] bArr, int i, int i2) throws DataLengthException, IllegalStateException {
        int i3 = 0;
        int i4 = i2 & -8;
        if (this.j == 0) {
            while (i3 < i4) {
                this.i = Pack.d(bArr, i + i3);
                e();
                i3 += 8;
            }
            while (i3 < i2) {
                this.i >>>= 8;
                this.i |= (((long) bArr[i + i3]) & 255) << 56;
                i3++;
            }
            this.j = i2 - i4;
            return;
        }
        int i5 = this.j << 3;
        while (i3 < i4) {
            long d = Pack.d(bArr, i + i3);
            this.i = (d << i5) | (this.i >>> (-i5));
            e();
            this.i = d;
            i3 += 8;
        }
        while (i3 < i2) {
            this.i >>>= 8;
            this.i |= (((long) bArr[i + i3]) & 255) << 56;
            i4 = this.j + 1;
            this.j = i4;
            if (i4 == 8) {
                e();
                this.j = 0;
            }
            i3++;
        }
    }

    public long d() throws DataLengthException, IllegalStateException {
        this.i >>>= (7 - this.j) << 3;
        this.i >>>= 8;
        this.i |= (((long) ((this.k << 3) + this.j)) & 255) << 56;
        e();
        this.g ^= 255;
        a(this.b);
        long j = ((this.e ^ this.f) ^ this.g) ^ this.h;
        c();
        return j;
    }

    public int a(byte[] bArr, int i) throws DataLengthException, IllegalStateException {
        Pack.b(d(), bArr, i);
        return 8;
    }

    public void c() {
        this.e = this.c ^ 8317987319222330741L;
        this.f = this.d ^ 7237128888997146477L;
        this.g = this.c ^ 7816392313619706465L;
        this.h = this.d ^ 8387220255154660723L;
        this.i = 0;
        this.j = 0;
        this.k = 0;
    }

    protected void e() {
        this.k++;
        this.h ^= this.i;
        a(this.a);
        this.e ^= this.i;
    }

    protected void a(int i) {
        long j = this.e;
        long j2 = this.f;
        long j3 = this.g;
        long j4 = this.h;
        for (int i2 = 0; i2 < i; i2++) {
            j += j2;
            j3 += j4;
            j2 = a(j2, 13) ^ j;
            j4 = a(j4, 16) ^ j3;
            j3 += j2;
            j = a(j, 32) + j4;
            j2 = a(j2, 17) ^ j3;
            j4 = a(j4, 21) ^ j;
            j3 = a(j3, 32);
        }
        this.e = j;
        this.f = j2;
        this.g = j3;
        this.h = j4;
    }

    protected static long a(long j, int i) {
        return (j << i) | (j >>> (-i));
    }
}
