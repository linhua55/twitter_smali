package com.twitter.util.ui;

import java.util.Arrays;

/* compiled from: Twttr */
class l {
    int a;
    int b;
    int c;
    int d;
    int e;
    int f;
    int g;
    int h;
    int i;
    int j;
    final /* synthetic */ MedianCutQuantizer k;

    l(MedianCutQuantizer medianCutQuantizer, int i, int i2, int i3) {
        this.k = medianCutQuantizer;
        this.a = 0;
        this.b = -1;
        this.d = 0;
        this.a = i;
        this.b = i2;
        this.c = i3;
        b();
    }

    int a() {
        return this.b - this.a;
    }

    void b() {
        this.e = 255;
        this.f = 0;
        this.g = 255;
        this.h = 0;
        this.i = 255;
        this.j = 0;
        this.d = 0;
        for (int i = this.a; i <= this.b; i++) {
            n nVar = this.k.b[i];
            this.d += nVar.d;
            int a = nVar.a;
            int b = nVar.b;
            int c = nVar.c;
            if (a > this.f) {
                this.f = a;
            }
            if (a < this.e) {
                this.e = a;
            }
            if (b > this.h) {
                this.h = b;
            }
            if (b < this.g) {
                this.g = b;
            }
            if (c > this.j) {
                this.j = c;
            }
            if (c < this.i) {
                this.i = c;
            }
        }
    }

    l c() {
        if (a() < 2) {
            return null;
        }
        int a = a(d());
        int i = this.c + 1;
        l lVar = new l(this.k, a + 1, this.b, i);
        this.b = a;
        this.c = i;
        b();
        return lVar;
    }

    ColorDimension d() {
        int i = this.f - this.e;
        int i2 = this.h - this.g;
        int i3 = this.j - this.i;
        if (i3 >= i && i3 >= i2) {
            return ColorDimension.BLUE;
        }
        if (i2 < i || i2 < i3) {
            return ColorDimension.RED;
        }
        return ColorDimension.GREEN;
    }

    int a(ColorDimension colorDimension) {
        Arrays.sort(this.k.b, this.a, this.b + 1, colorDimension.comparator);
        int i = this.d / 2;
        int i2 = this.a;
        int i3 = 0;
        while (i2 < this.b) {
            i3 += this.k.b[i2].d;
            if (i3 >= i) {
                break;
            }
            i2++;
        }
        return i2;
    }

    n e() {
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        for (int i5 = this.a; i5 <= this.b; i5++) {
            n nVar = this.k.b[i5];
            int d = nVar.d;
            i4 += nVar.a * d;
            i3 += nVar.b * d;
            i2 += nVar.c * d;
            i += d;
        }
        double d2 = (double) i;
        return new n((int) ((((double) i4) / d2) + 0.5d), (int) ((((double) i3) / d2) + 0.5d), (int) ((((double) i2) / d2) + 0.5d), i);
    }

    public String toString() {
        return (((((getClass().getSimpleName() + " lower=" + this.a + " upper=" + this.b) + " count=" + this.d + " level=" + this.c) + " rmin=" + this.e + " rmax=" + this.f) + " gmin=" + this.g + " gmax=" + this.h) + " bmin=" + this.i + " bmax=" + this.j) + " bmin=" + this.i + " bmax=" + this.j;
    }
}
