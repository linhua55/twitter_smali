package tv.periscope.android.video.rtmp;

import defpackage.dcv;

/* compiled from: Twttr */
public class c {
    private final int a;
    private int b;
    private long c;
    private long d;
    private int e;
    private int f;
    private int g;

    public c(int i, int i2) {
        this.c = 0;
        this.d = 0;
        this.e = 0;
        this.f = 0;
        this.g = -1;
        this.a = i;
        this.b = i2;
    }

    public boolean a(n nVar, j jVar) {
        byte[] bArr = nVar.e().a;
        int i = nVar.e().b;
        int i2 = 0;
        while (i2 < i) {
            byte[] a;
            int i3 = i - i2;
            if (i3 > this.b) {
                i3 = this.b;
            }
            if (i2 == 0) {
                a = a(nVar, i, i3, i2, bArr);
            } else {
                a = a(i3, bArr, i2);
            }
            jVar.a(a, 0, a.length);
            i2 += i3;
        }
        return false;
    }

    private byte[] a(n nVar, int i, int i2, int i3, byte[] bArr) {
        int i4;
        int i5;
        Object obj = new byte[18];
        int i6 = 3;
        if (this.g != nVar.c()) {
            i6 = 0;
        } else if (i != this.f || this.e != nVar.b()) {
            i6 = 1;
        } else if (nVar.d() - this.c != this.d) {
            i6 = 2;
        }
        if (this.a < 64) {
            i4 = 1;
            obj[0] = (byte) ((i6 << 6) | this.a);
        } else if (this.a < 320) {
            obj[0] = (byte) ((i6 << 6) | 0);
            i4 = 2;
            obj[1] = (byte) (this.a - 64);
        } else {
            obj[0] = (byte) ((i6 << 6) | 1);
            int i7 = this.a - 64;
            obj[1] = (byte) (i7 >> 8);
            i4 = 3;
            obj[2] = (byte) i7;
        }
        long d = nVar.d();
        if (d < this.c || d < 0) {
            dcv.e("ChunkSender", "Ignore negative time delta");
            d = this.c;
        }
        if (i6 != 0) {
            d -= this.c;
        }
        this.f = i;
        this.g = nVar.c();
        this.e = nVar.b();
        this.c = nVar.d();
        this.d = d;
        Object obj2 = null;
        if (i6 < 3) {
            int i8;
            if (d > 16777215) {
                obj2 = 1;
                i5 = i4 + 1;
                obj[i4] = (byte) -1;
                i8 = i5 + 1;
                obj[i5] = (byte) -1;
                i4 = i8 + 1;
                obj[i8] = (byte) -1;
            } else {
                i5 = i4 + 1;
                obj[i4] = (byte) ((int) (d >> 16));
                i8 = i5 + 1;
                obj[i5] = (byte) ((int) (d >> 8));
                i4 = i8 + 1;
                obj[i8] = (byte) ((int) d);
            }
        }
        if (i6 < 2) {
            i5 = i4 + 1;
            obj[i4] = (byte) (i >> 16);
            i4 = i5 + 1;
            obj[i5] = (byte) (i >> 8);
            i5 = i4 + 1;
            obj[i4] = (byte) i;
            i4 = i5 + 1;
            obj[i5] = (byte) nVar.b();
        }
        if (i6 == 0) {
            i6 = i4 + 1;
            obj[i4] = (byte) this.g;
            i4 = i6 + 1;
            obj[i6] = (byte) (this.g >> 8);
            i5 = i4 + 1;
            obj[i4] = (byte) (this.g >> 16);
            i6 = i5 + 1;
            obj[i5] = (byte) (this.g >> 24);
        } else {
            i6 = i4;
        }
        if (obj2 != null) {
            Connection.a(d, obj, i6);
            i6 += 4;
        }
        Object obj3 = new byte[(i6 + i2)];
        System.arraycopy(obj, 0, obj3, 0, i6);
        System.arraycopy(bArr, i3, obj3, i6, i2);
        return obj3;
    }

    private byte[] a(int i, byte[] bArr, int i2) {
        Object obj = new byte[(i + 1)];
        obj[0] = (byte) (this.a | 192);
        System.arraycopy(bArr, i2, obj, 1, i);
        return obj;
    }
}
