package com.twitter.util.ui;

import android.graphics.Color;

/* compiled from: Twttr */
public class n {
    private final int a;
    private final int b;
    private final int c;
    private final int d;
    private float[] e;

    n(int i, int i2) {
        this.a = Color.red(i);
        this.b = Color.green(i);
        this.c = Color.blue(i);
        this.d = i2;
    }

    n(int i, int i2, int i3, int i4) {
        this.a = i;
        this.b = i2;
        this.c = i3;
        this.d = i4;
    }

    public int a() {
        return Color.rgb(this.a, this.b, this.c);
    }

    public float[] b() {
        if (this.e == null) {
            this.e = new float[3];
            Color.RGBToHSV(this.a, this.b, this.c, this.e);
        }
        return this.e;
    }

    public int c() {
        return this.d;
    }

    public String toString() {
        return new StringBuilder(getClass().getSimpleName()).append(" #").append(Integer.toHexString(a())).append(". count: ").append(this.d).toString();
    }
}
