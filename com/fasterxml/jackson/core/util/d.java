package com.fasterxml.jackson.core.util;

import com.fasterxml.jackson.core.io.e;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Arrays;

/* compiled from: Twttr */
public final class d {
    static final char[] a;
    private final a b;
    private char[] c;
    private int d;
    private int e;
    private ArrayList<char[]> f;
    private boolean g;
    private int h;
    private char[] i;
    private int j;
    private String k;
    private char[] l;

    static {
        a = new char[0];
    }

    public d(a aVar) {
        this.g = false;
        this.b = aVar;
    }

    public void a() {
        if (this.b == null) {
            b();
        } else if (this.i != null) {
            b();
            char[] cArr = this.i;
            this.i = null;
            this.b.a(2, cArr);
        }
    }

    public void b() {
        this.d = -1;
        this.j = 0;
        this.e = 0;
        this.c = null;
        this.k = null;
        this.l = null;
        if (this.g) {
            o();
        }
    }

    public void a(char[] cArr, int i, int i2) {
        this.k = null;
        this.l = null;
        this.c = cArr;
        this.d = i;
        this.e = i2;
        if (this.g) {
            o();
        }
    }

    public void b(char[] cArr, int i, int i2) {
        this.c = null;
        this.d = -1;
        this.e = 0;
        this.k = null;
        this.l = null;
        if (this.g) {
            o();
        } else if (this.i == null) {
            this.i = b(i2);
        }
        this.h = 0;
        this.j = 0;
        c(cArr, i, i2);
    }

    public void a(String str) {
        this.c = null;
        this.d = -1;
        this.e = 0;
        this.k = str;
        this.l = null;
        if (this.g) {
            o();
        }
        this.j = 0;
    }

    private char[] b(int i) {
        if (this.b != null) {
            return this.b.b(2, i);
        }
        return new char[Math.max(i, ExoPlayerImplInternal.MSG_SEEK_COMPLETE)];
    }

    private void o() {
        this.g = false;
        this.f.clear();
        this.h = 0;
        this.j = 0;
    }

    public int c() {
        if (this.d >= 0) {
            return this.e;
        }
        if (this.l != null) {
            return this.l.length;
        }
        if (this.k != null) {
            return this.k.length();
        }
        return this.h + this.j;
    }

    public int d() {
        return this.d >= 0 ? this.d : 0;
    }

    public char[] e() {
        if (this.d >= 0) {
            return this.c;
        }
        if (this.l != null) {
            return this.l;
        }
        if (this.k != null) {
            char[] toCharArray = this.k.toCharArray();
            this.l = toCharArray;
            return toCharArray;
        } else if (this.g) {
            return g();
        } else {
            return this.i;
        }
    }

    public String f() {
        if (this.k == null) {
            if (this.l != null) {
                this.k = new String(this.l);
            } else if (this.d < 0) {
                int i = this.h;
                int i2 = this.j;
                if (i == 0) {
                    this.k = i2 == 0 ? TtmlNode.ANONYMOUS_REGION_ID : new String(this.i, 0, i2);
                } else {
                    StringBuilder stringBuilder = new StringBuilder(i + i2);
                    if (this.f != null) {
                        int size = this.f.size();
                        for (i2 = 0; i2 < size; i2++) {
                            char[] cArr = (char[]) this.f.get(i2);
                            stringBuilder.append(cArr, 0, cArr.length);
                        }
                    }
                    stringBuilder.append(this.i, 0, this.j);
                    this.k = stringBuilder.toString();
                }
            } else if (this.e < 1) {
                String str = TtmlNode.ANONYMOUS_REGION_ID;
                this.k = str;
                return str;
            } else {
                this.k = new String(this.c, this.d, this.e);
            }
        }
        return this.k;
    }

    public char[] g() {
        char[] cArr = this.l;
        if (cArr != null) {
            return cArr;
        }
        cArr = p();
        this.l = cArr;
        return cArr;
    }

    public BigDecimal h() throws NumberFormatException {
        if (this.l != null) {
            return e.a(this.l);
        }
        if (this.d >= 0 && this.c != null) {
            return e.c(this.c, this.d, this.e);
        }
        if (this.h != 0 || this.i == null) {
            return e.a(g());
        }
        return e.c(this.i, 0, this.j);
    }

    public double i() throws NumberFormatException {
        return e.a(f());
    }

    public void c(char[] cArr, int i, int i2) {
        if (this.d >= 0) {
            c(i2);
        }
        this.k = null;
        this.l = null;
        Object obj = this.i;
        int length = obj.length - this.j;
        if (length >= i2) {
            System.arraycopy(cArr, i, obj, this.j, i2);
            this.j += i2;
            return;
        }
        if (length > 0) {
            System.arraycopy(cArr, i, obj, this.j, length);
            i += length;
            i2 -= length;
        }
        do {
            d(i2);
            int min = Math.min(this.i.length, i2);
            System.arraycopy(cArr, i, this.i, 0, min);
            this.j += min;
            i += min;
            i2 -= min;
        } while (i2 > 0);
    }

    public char[] j() {
        if (this.d >= 0) {
            c(1);
        } else {
            char[] cArr = this.i;
            if (cArr == null) {
                this.i = b(0);
            } else if (this.j >= cArr.length) {
                d(1);
            }
        }
        return this.i;
    }

    public char[] k() {
        this.d = -1;
        this.j = 0;
        this.e = 0;
        this.c = null;
        this.k = null;
        this.l = null;
        if (this.g) {
            o();
        }
        char[] cArr = this.i;
        if (cArr != null) {
            return cArr;
        }
        cArr = b(0);
        this.i = cArr;
        return cArr;
    }

    public int l() {
        return this.j;
    }

    public void a(int i) {
        this.j = i;
    }

    public char[] m() {
        int i = ExoPlayerImplInternal.MSG_SEEK_COMPLETE;
        if (this.f == null) {
            this.f = new ArrayList();
        }
        this.g = true;
        this.f.add(this.i);
        int length = this.i.length;
        this.h += length;
        this.j = 0;
        length += length >> 1;
        if (length >= ExoPlayerImplInternal.MSG_SEEK_COMPLETE) {
            if (length > 262144) {
                i = 262144;
            } else {
                i = length;
            }
        }
        char[] e = e(i);
        this.i = e;
        return e;
    }

    public char[] n() {
        char[] cArr = this.i;
        int length = cArr.length;
        int i = (length >> 1) + length;
        if (i > 262144) {
            i = (length >> 2) + length;
        }
        char[] copyOf = Arrays.copyOf(cArr, i);
        this.i = copyOf;
        return copyOf;
    }

    public String toString() {
        return f();
    }

    private void c(int i) {
        int i2 = this.e;
        this.e = 0;
        Object obj = this.c;
        this.c = null;
        int i3 = this.d;
        this.d = -1;
        int i4 = i2 + i;
        if (this.i == null || i4 > this.i.length) {
            this.i = b(i4);
        }
        if (i2 > 0) {
            System.arraycopy(obj, i3, this.i, 0, i2);
        }
        this.h = 0;
        this.j = i2;
    }

    private void d(int i) {
        int i2 = ExoPlayerImplInternal.MSG_SEEK_COMPLETE;
        if (this.f == null) {
            this.f = new ArrayList();
        }
        Object obj = this.i;
        this.g = true;
        this.f.add(obj);
        this.h += obj.length;
        this.j = 0;
        int length = obj.length;
        length += length >> 1;
        if (length >= ExoPlayerImplInternal.MSG_SEEK_COMPLETE) {
            if (length > 262144) {
                i2 = 262144;
            } else {
                i2 = length;
            }
        }
        this.i = e(i2);
    }

    private char[] p() {
        if (this.k != null) {
            return this.k.toCharArray();
        }
        int i;
        int i2;
        if (this.d >= 0) {
            i = this.e;
            if (i < 1) {
                return a;
            }
            i2 = this.d;
            if (i2 == 0) {
                return Arrays.copyOf(this.c, i);
            }
            return Arrays.copyOfRange(this.c, i2, i + i2);
        }
        i = c();
        if (i < 1) {
            return a;
        }
        Object e = e(i);
        if (this.f != null) {
            int size = this.f.size();
            i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                char[] cArr = (char[]) this.f.get(i3);
                int length = cArr.length;
                System.arraycopy(cArr, 0, e, i2, length);
                i2 += length;
            }
            i = i2;
        } else {
            i = 0;
        }
        System.arraycopy(this.i, 0, e, i, this.j);
        return e;
    }

    private char[] e(int i) {
        return new char[i];
    }
}
