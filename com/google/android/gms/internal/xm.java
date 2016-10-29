package com.google.android.gms.internal;

import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.util.NalUnitUtil;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import java.io.IOException;

public final class xm {
    private final byte[] a;
    private int b;
    private int c;
    private int d;
    private int e;
    private int f;
    private int g;
    private int h;
    private int i;
    private int j;

    private xm(byte[] bArr, int i, int i2) {
        this.g = Integer.MAX_VALUE;
        this.i = 64;
        this.j = 67108864;
        this.a = bArr;
        this.b = i;
        this.c = i + i2;
        this.e = i;
    }

    public static long a(long j) {
        return (j >>> 1) ^ (-(1 & j));
    }

    public static xm a(byte[] bArr) {
        return a(bArr, 0, bArr.length);
    }

    public static xm a(byte[] bArr, int i, int i2) {
        return new xm(bArr, i, i2);
    }

    private void s() {
        this.c += this.d;
        int i = this.c;
        if (i > this.g) {
            this.d = i - this.g;
            this.c -= this.d;
            return;
        }
        this.d = 0;
    }

    public int a() throws IOException {
        if (p()) {
            this.f = 0;
            return 0;
        }
        this.f = k();
        if (this.f != 0) {
            return this.f;
        }
        throw zzst.d();
    }

    public void a(int i) throws zzst {
        if (this.f != i) {
            throw zzst.e();
        }
    }

    public void a(xs xsVar) throws IOException {
        int k = k();
        if (this.h >= this.i) {
            throw zzst.g();
        }
        k = c(k);
        this.h++;
        xsVar.b(this);
        a(0);
        this.h--;
        d(k);
    }

    public byte[] a(int i, int i2) {
        if (i2 == 0) {
            return xv.h;
        }
        Object obj = new byte[i2];
        System.arraycopy(this.a, this.b + i, obj, 0, i2);
        return obj;
    }

    public void b() throws IOException {
        int a;
        do {
            a = a();
            if (a == 0) {
                return;
            }
        } while (b(a));
    }

    public boolean b(int i) throws IOException {
        switch (xv.a(i)) {
            case Util.TYPE_DASH /*0*/:
                f();
                return true;
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                n();
                return true;
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                g(k());
                return true;
            case Util.TYPE_OTHER /*3*/:
                b();
                a(xv.a(xv.b(i), 4));
                return true;
            case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                return false;
            case EbmlReader.TYPE_FLOAT /*5*/:
                m();
                return true;
            default:
                throw zzst.f();
        }
    }

    public float c() throws IOException {
        return Float.intBitsToFloat(m());
    }

    public int c(int i) throws zzst {
        if (i < 0) {
            throw zzst.b();
        }
        int i2 = this.e + i;
        int i3 = this.g;
        if (i2 > i3) {
            throw zzst.a();
        }
        this.g = i2;
        s();
        return i3;
    }

    public long d() throws IOException {
        return l();
    }

    public void d(int i) {
        this.g = i;
        s();
    }

    public long e() throws IOException {
        return l();
    }

    public void e(int i) {
        if (i > this.e - this.b) {
            throw new IllegalArgumentException("Position " + i + " is beyond current " + (this.e - this.b));
        } else if (i < 0) {
            throw new IllegalArgumentException("Bad position " + i);
        } else {
            this.e = this.b + i;
        }
    }

    public int f() throws IOException {
        return k();
    }

    public byte[] f(int i) throws IOException {
        if (i < 0) {
            throw zzst.b();
        } else if (this.e + i > this.g) {
            g(this.g - this.e);
            throw zzst.a();
        } else if (i <= this.c - this.e) {
            Object obj = new byte[i];
            System.arraycopy(this.a, this.e, obj, 0, i);
            this.e += i;
            return obj;
        } else {
            throw zzst.a();
        }
    }

    public void g(int i) throws IOException {
        if (i < 0) {
            throw zzst.b();
        } else if (this.e + i > this.g) {
            g(this.g - this.e);
            throw zzst.a();
        } else if (i <= this.c - this.e) {
            this.e += i;
        } else {
            throw zzst.a();
        }
    }

    public boolean g() throws IOException {
        return k() != 0;
    }

    public String h() throws IOException {
        int k = k();
        if (k > this.c - this.e || k <= 0) {
            return new String(f(k), Util.UTF_8);
        }
        String str = new String(this.a, this.e, k, Util.UTF_8);
        this.e = k + this.e;
        return str;
    }

    public byte[] i() throws IOException {
        int k = k();
        if (k > this.c - this.e || k <= 0) {
            return k == 0 ? xv.h : f(k);
        } else {
            Object obj = new byte[k];
            System.arraycopy(this.a, this.e, obj, 0, k);
            this.e = k + this.e;
            return obj;
        }
    }

    public long j() throws IOException {
        return a(l());
    }

    public int k() throws IOException {
        byte r = r();
        if (r >= null) {
            return r;
        }
        int i = r & 127;
        byte r2 = r();
        if (r2 >= null) {
            return i | (r2 << 7);
        }
        i |= (r2 & 127) << 7;
        r2 = r();
        if (r2 >= null) {
            return i | (r2 << 14);
        }
        i |= (r2 & 127) << 14;
        r2 = r();
        if (r2 >= null) {
            return i | (r2 << 21);
        }
        i |= (r2 & 127) << 21;
        r2 = r();
        i |= r2 << 28;
        if (r2 >= null) {
            return i;
        }
        for (int i2 = 0; i2 < 5; i2++) {
            if (r() >= null) {
                return i;
            }
        }
        throw zzst.c();
    }

    public long l() throws IOException {
        long j = 0;
        for (int i = 0; i < 64; i += 7) {
            byte r = r();
            j |= ((long) (r & 127)) << i;
            if ((r & 128) == 0) {
                return j;
            }
        }
        throw zzst.c();
    }

    public int m() throws IOException {
        return (((r() & NalUnitUtil.EXTENDED_SAR) | ((r() & NalUnitUtil.EXTENDED_SAR) << 8)) | ((r() & NalUnitUtil.EXTENDED_SAR) << 16)) | ((r() & NalUnitUtil.EXTENDED_SAR) << 24);
    }

    public long n() throws IOException {
        byte r = r();
        byte r2 = r();
        return ((((((((((long) r2) & 255) << 8) | (((long) r) & 255)) | ((((long) r()) & 255) << 16)) | ((((long) r()) & 255) << 24)) | ((((long) r()) & 255) << 32)) | ((((long) r()) & 255) << 40)) | ((((long) r()) & 255) << 48)) | ((((long) r()) & 255) << 56);
    }

    public int o() {
        if (this.g == Integer.MAX_VALUE) {
            return -1;
        }
        return this.g - this.e;
    }

    public boolean p() {
        return this.e == this.c;
    }

    public int q() {
        return this.e - this.b;
    }

    public byte r() throws IOException {
        if (this.e == this.c) {
            throw zzst.a();
        }
        byte[] bArr = this.a;
        int i = this.e;
        this.e = i + 1;
        return bArr[i];
    }
}
