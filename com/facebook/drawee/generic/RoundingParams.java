package com.facebook.drawee.generic;

import defpackage.bx;
import java.util.Arrays;

/* compiled from: Twttr */
public class RoundingParams {
    private RoundingMethod a;
    private boolean b;
    private float[] c;
    private int d;
    private float e;
    private int f;

    /* compiled from: Twttr */
    public enum RoundingMethod {
        OVERLAY_COLOR,
        BITMAP_ONLY
    }

    public RoundingParams() {
        this.a = RoundingMethod.BITMAP_ONLY;
        this.b = false;
        this.c = null;
        this.d = 0;
        this.e = 0.0f;
        this.f = 0;
    }

    public RoundingParams a(boolean z) {
        this.b = z;
        return this;
    }

    public boolean a() {
        return this.b;
    }

    public RoundingParams a(float f) {
        Arrays.fill(g(), f);
        return this;
    }

    public RoundingParams a(float f, float f2, float f3, float f4) {
        float[] g = g();
        g[1] = f;
        g[0] = f;
        g[3] = f2;
        g[2] = f2;
        g[5] = f3;
        g[4] = f3;
        g[7] = f4;
        g[6] = f4;
        return this;
    }

    public float[] b() {
        return this.c;
    }

    public RoundingMethod c() {
        return this.a;
    }

    public RoundingParams a(int i) {
        this.d = i;
        this.a = RoundingMethod.OVERLAY_COLOR;
        return this;
    }

    public int d() {
        return this.d;
    }

    private float[] g() {
        if (this.c == null) {
            this.c = new float[8];
        }
        return this.c;
    }

    public static RoundingParams b(float f) {
        return new RoundingParams().a(f);
    }

    public static RoundingParams b(float f, float f2, float f3, float f4) {
        return new RoundingParams().a(f, f2, f3, f4);
    }

    public RoundingParams a(int i, float f) {
        bx.a(f >= 0.0f, (Object) "the border width cannot be < 0");
        this.e = f;
        this.f = i;
        return this;
    }

    public float e() {
        return this.e;
    }

    public int f() {
        return this.f;
    }
}
