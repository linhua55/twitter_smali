package com.twitter.media.ui.image.config;

/* compiled from: Twttr */
public class d implements g {
    private final float a;
    private final float b;
    private final float c;
    private final float d;

    public static g a(float f) {
        return a(f, f, f, f);
    }

    public static g a(float f, float f2, float f3, float f4) {
        if (f == 0.0f && f2 == 0.0f && f4 == 0.0f && f3 == 0.0f) {
            return CommonRoundingStrategy.NONE;
        }
        return new d(f, f2, f3, f4);
    }

    private d(float f, float f2, float f3, float f4) {
        this.a = f;
        this.b = f2;
        this.c = f4;
        this.d = f3;
    }

    public float b(f fVar) {
        return this.a;
    }

    public float c(f fVar) {
        return this.b;
    }

    public float d(f fVar) {
        return this.d;
    }

    public float e(f fVar) {
        return this.c;
    }
}
