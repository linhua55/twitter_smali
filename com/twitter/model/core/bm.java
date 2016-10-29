package com.twitter.model.core;

import com.twitter.util.math.Size;
import com.twitter.util.serialization.n;

/* compiled from: Twttr */
public class bm {
    public static final n<bm> a;
    public final float b;
    public final float c;
    public final float d;
    public final float e;

    static {
        a = new bo();
    }

    public bm(float f, float f2, float f3, float f4) {
        this.b = f;
        this.c = f2;
        this.d = f3;
        this.e = f4;
    }

    public bm(int i, int i2, int i3, int i4, Size size) {
        float f;
        float f2 = 0.0f;
        int a = size.a();
        this.b = a > 0 ? ((float) i) / ((float) a) : 0.0f;
        if (a > 0) {
            f = ((float) i3) / ((float) a);
        } else {
            f = 0.0f;
        }
        this.d = f;
        a = size.b();
        if (a > 0) {
            f = ((float) i2) / ((float) a);
        } else {
            f = 0.0f;
        }
        this.c = f;
        if (a > 0) {
            f2 = ((float) i4) / ((float) a);
        }
        this.e = f2;
    }
}
