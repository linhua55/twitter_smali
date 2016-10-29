package com.google.android.gms.internal;

public final class xp implements Cloneable {
    private static final xq a;
    private boolean b;
    private int[] c;
    private xq[] d;
    private int e;

    static {
        a = new xq();
    }

    xp() {
        this(10);
    }

    xp(int i) {
        this.b = false;
        int c = c(i);
        this.c = new int[c];
        this.d = new xq[c];
        this.e = 0;
    }

    private boolean a(int[] iArr, int[] iArr2, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            if (iArr[i2] != iArr2[i2]) {
                return false;
            }
        }
        return true;
    }

    private boolean a(xq[] xqVarArr, xq[] xqVarArr2, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            if (!xqVarArr[i2].equals(xqVarArr2[i2])) {
                return false;
            }
        }
        return true;
    }

    private int c(int i) {
        return d(i * 4) / 4;
    }

    private int d(int i) {
        for (int i2 = 4; i2 < 32; i2++) {
            if (i <= (1 << i2) - 12) {
                return (1 << i2) - 12;
            }
        }
        return i;
    }

    private void d() {
        int i = this.e;
        int[] iArr = this.c;
        xq[] xqVarArr = this.d;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            xq xqVar = xqVarArr[i3];
            if (xqVar != a) {
                if (i3 != i2) {
                    iArr[i2] = iArr[i3];
                    xqVarArr[i2] = xqVar;
                    xqVarArr[i3] = null;
                }
                i2++;
            }
        }
        this.b = false;
        this.e = i2;
    }

    private int e(int i) {
        int i2 = 0;
        int i3 = this.e - 1;
        while (i2 <= i3) {
            int i4 = (i2 + i3) >>> 1;
            int i5 = this.c[i4];
            if (i5 < i) {
                i2 = i4 + 1;
            } else if (i5 <= i) {
                return i4;
            } else {
                i3 = i4 - 1;
            }
        }
        return i2 ^ -1;
    }

    int a() {
        if (this.b) {
            d();
        }
        return this.e;
    }

    xq a(int i) {
        int e = e(i);
        return (e < 0 || this.d[e] == a) ? null : this.d[e];
    }

    void a(int i, xq xqVar) {
        int e = e(i);
        if (e >= 0) {
            this.d[e] = xqVar;
            return;
        }
        e ^= -1;
        if (e >= this.e || this.d[e] != a) {
            if (this.b && this.e >= this.c.length) {
                d();
                e = e(i) ^ -1;
            }
            if (this.e >= this.c.length) {
                int c = c(this.e + 1);
                Object obj = new int[c];
                Object obj2 = new xq[c];
                System.arraycopy(this.c, 0, obj, 0, this.c.length);
                System.arraycopy(this.d, 0, obj2, 0, this.d.length);
                this.c = obj;
                this.d = obj2;
            }
            if (this.e - e != 0) {
                System.arraycopy(this.c, e, this.c, e + 1, this.e - e);
                System.arraycopy(this.d, e, this.d, e + 1, this.e - e);
            }
            this.c[e] = i;
            this.d[e] = xqVar;
            this.e++;
            return;
        }
        this.c[e] = i;
        this.d[e] = xqVar;
    }

    xq b(int i) {
        if (this.b) {
            d();
        }
        return this.d[i];
    }

    public boolean b() {
        return a() == 0;
    }

    public final xp c() {
        int i = 0;
        int a = a();
        xp xpVar = new xp(a);
        System.arraycopy(this.c, 0, xpVar.c, 0, a);
        while (i < a) {
            if (this.d[i] != null) {
                xpVar.d[i] = this.d[i].b();
            }
            i++;
        }
        xpVar.e = a;
        return xpVar;
    }

    public /* synthetic */ Object clone() throws CloneNotSupportedException {
        return c();
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof xp)) {
            return false;
        }
        xp xpVar = (xp) obj;
        return a() != xpVar.a() ? false : a(this.c, xpVar.c, this.e) && a(this.d, xpVar.d, this.e);
    }

    public int hashCode() {
        if (this.b) {
            d();
        }
        int i = 17;
        for (int i2 = 0; i2 < this.e; i2++) {
            i = (((i * 31) + this.c[i2]) * 31) + this.d[i2].hashCode();
        }
        return i;
    }
}
