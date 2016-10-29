package com.google.i18n.phonenumbers.repackaged.com.google.protobuf.nano;

import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.util.NalUnitUtil;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import java.io.IOException;

/* compiled from: Twttr */
public final class a {
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

    public static a a(byte[] bArr) {
        return a(bArr, 0, bArr.length);
    }

    public static a a(byte[] bArr, int i, int i2) {
        return new a(bArr, i, i2);
    }

    public int a() throws IOException {
        if (i()) {
            this.f = 0;
            return 0;
        }
        this.f = f();
        if (this.f != 0) {
            return this.f;
        }
        throw InvalidProtocolBufferNanoException.d();
    }

    public void a(int i) throws InvalidProtocolBufferNanoException {
        if (this.f != i) {
            throw InvalidProtocolBufferNanoException.e();
        }
    }

    public boolean b(int i) throws IOException {
        switch (e.a(i)) {
            case Util.TYPE_DASH /*0*/:
                c();
                return true;
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                h();
                return true;
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                g(f());
                return true;
            case Util.TYPE_OTHER /*3*/:
                b();
                a(e.a(e.b(i), 4));
                return true;
            case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                return false;
            case EbmlReader.TYPE_FLOAT /*5*/:
                g();
                return true;
            default:
                throw InvalidProtocolBufferNanoException.f();
        }
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

    public int c() throws IOException {
        return f();
    }

    public boolean d() throws IOException {
        return f() != 0;
    }

    public String e() throws IOException {
        int f = f();
        if (f > this.c - this.e || f <= 0) {
            return new String(f(f), Util.UTF_8);
        }
        String str = new String(this.a, this.e, f, Util.UTF_8);
        this.e = f + this.e;
        return str;
    }

    public void a(c cVar) throws IOException {
        int f = f();
        if (this.h >= this.i) {
            throw InvalidProtocolBufferNanoException.g();
        }
        f = c(f);
        this.h++;
        cVar.b(this);
        a(0);
        this.h--;
        d(f);
    }

    public int f() throws IOException {
        byte k = k();
        if (k >= null) {
            return k;
        }
        int i = k & 127;
        byte k2 = k();
        if (k2 >= null) {
            return i | (k2 << 7);
        }
        i |= (k2 & 127) << 7;
        k2 = k();
        if (k2 >= null) {
            return i | (k2 << 14);
        }
        i |= (k2 & 127) << 14;
        k2 = k();
        if (k2 >= null) {
            return i | (k2 << 21);
        }
        i |= (k2 & 127) << 21;
        k2 = k();
        i |= k2 << 28;
        if (k2 >= null) {
            return i;
        }
        for (int i2 = 0; i2 < 5; i2++) {
            if (k() >= null) {
                return i;
            }
        }
        throw InvalidProtocolBufferNanoException.c();
    }

    public int g() throws IOException {
        return (((k() & NalUnitUtil.EXTENDED_SAR) | ((k() & NalUnitUtil.EXTENDED_SAR) << 8)) | ((k() & NalUnitUtil.EXTENDED_SAR) << 16)) | ((k() & NalUnitUtil.EXTENDED_SAR) << 24);
    }

    public long h() throws IOException {
        byte k = k();
        byte k2 = k();
        return ((((((((((long) k2) & 255) << 8) | (((long) k) & 255)) | ((((long) k()) & 255) << 16)) | ((((long) k()) & 255) << 24)) | ((((long) k()) & 255) << 32)) | ((((long) k()) & 255) << 40)) | ((((long) k()) & 255) << 48)) | ((((long) k()) & 255) << 56);
    }

    private a(byte[] bArr, int i, int i2) {
        this.g = Integer.MAX_VALUE;
        this.i = 64;
        this.j = 67108864;
        this.a = bArr;
        this.b = i;
        this.c = i + i2;
        this.e = i;
    }

    public int c(int i) throws InvalidProtocolBufferNanoException {
        if (i < 0) {
            throw InvalidProtocolBufferNanoException.b();
        }
        int i2 = this.e + i;
        int i3 = this.g;
        if (i2 > i3) {
            throw InvalidProtocolBufferNanoException.a();
        }
        this.g = i2;
        l();
        return i3;
    }

    private void l() {
        this.c += this.d;
        int i = this.c;
        if (i > this.g) {
            this.d = i - this.g;
            this.c -= this.d;
            return;
        }
        this.d = 0;
    }

    public void d(int i) {
        this.g = i;
        l();
    }

    public boolean i() {
        return this.e == this.c;
    }

    public int j() {
        return this.e - this.b;
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

    public byte k() throws IOException {
        if (this.e == this.c) {
            throw InvalidProtocolBufferNanoException.a();
        }
        byte[] bArr = this.a;
        int i = this.e;
        this.e = i + 1;
        return bArr[i];
    }

    public byte[] f(int i) throws IOException {
        if (i < 0) {
            throw InvalidProtocolBufferNanoException.b();
        } else if (this.e + i > this.g) {
            g(this.g - this.e);
            throw InvalidProtocolBufferNanoException.a();
        } else if (i <= this.c - this.e) {
            Object obj = new byte[i];
            System.arraycopy(this.a, this.e, obj, 0, i);
            this.e += i;
            return obj;
        } else {
            throw InvalidProtocolBufferNanoException.a();
        }
    }

    public void g(int i) throws IOException {
        if (i < 0) {
            throw InvalidProtocolBufferNanoException.b();
        } else if (this.e + i > this.g) {
            g(this.g - this.e);
            throw InvalidProtocolBufferNanoException.a();
        } else if (i <= this.c - this.e) {
            this.e += i;
        } else {
            throw InvalidProtocolBufferNanoException.a();
        }
    }
}
