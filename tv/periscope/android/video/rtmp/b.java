package tv.periscope.android.video.rtmp;

import defpackage.dcv;

/* compiled from: Twttr */
public class b {
    private final int a;
    private int b;
    private boolean c;
    private byte[] d;
    private int e;
    private int f;
    private int g;
    private boolean h;
    private n i;
    private int j;
    private int k;
    private int l;
    private long m;
    private long n;
    private p o;

    public b(int i, int i2, p pVar) {
        this.d = new byte[4];
        this.e = 0;
        this.o = pVar;
        this.a = i;
        this.b = i2;
        this.c = true;
        c();
    }

    public void a(int i) {
        this.b = i;
    }

    public boolean a() {
        return this.c;
    }

    public int b() {
        int i = this.l - this.g;
        if (i > this.b) {
            i = this.b;
        }
        return i + (this.e - this.f);
    }

    public n a(byte[] bArr, int i, int i2, int i3) {
        int i4;
        if (i3 < 3) {
            this.n = (long) (((bArr[i + 0] & 255) << 16) | (((bArr[i + 1] & 255) << 8) + (bArr[i + 2] & 255)));
            i4 = i + 3;
        } else {
            i4 = i;
        }
        if (i3 < 2) {
            this.l = ((bArr[i4 + 0] & 255) << 16) | (((bArr[i4 + 1] & 255) << 8) + (bArr[i4 + 2] & 255));
            if (this.l > 3145728) {
                dcv.e("RTMP", "Message len: " + this.l);
            }
            this.k = bArr[i4 + 3];
            i4 += 4;
        }
        if (i3 == 0) {
            this.j = (((bArr[i4 + 3] & 255) << 24) | ((bArr[i4 + 2] & 255) << 16)) | (((bArr[i4 + 1] & 255) << 8) + (bArr[i4] & 255));
            i4 += 4;
            this.h = false;
        } else {
            this.h = true;
        }
        if (i3 == 3) {
            this.e = 0;
        } else if (this.n == 16777215) {
            dcv.e("ChunkReader", "Extended time");
            this.e = 4;
            this.f = 0;
        }
        this.c = false;
        return null;
    }

    public n a(byte[] bArr, int i, int i2) {
        if (this.l == 0) {
            this.c = true;
            return null;
        }
        int i3;
        if (this.f < this.e) {
            i3 = this.e - this.f;
            if (i2 < i3) {
                i3 = i2;
            }
            System.arraycopy(bArr, i, this.d, this.f, i3);
            this.f += i3;
            i += i3;
            i2 -= i3;
        }
        if (this.e == this.f && i2 > 0) {
            if (this.i == null) {
                this.i = this.o.a(this.k, this.a, this.j, this.l);
                this.i.e().b = 0;
            }
            i e = this.i.e();
            i3 = this.l - e.b;
            if (i2 >= i3) {
                i2 = i3;
            }
            e.a(bArr, i, i2);
            this.g += i2;
            if (e.b == this.l) {
                if (this.e == 4) {
                    this.n = a.b(this.d, 0);
                }
                if (this.h) {
                    this.m += this.n;
                } else {
                    this.m = this.n;
                }
                this.i.a(this.m);
                this.i.g();
                this.c = true;
                c();
                n nVar = this.i;
                this.i = null;
                return nVar;
            } else if (i2 == this.b) {
                this.f = 0;
                this.c = true;
            }
        }
        return null;
    }

    private void c() {
        this.e = 0;
        this.f = 0;
        this.g = 0;
    }
}
