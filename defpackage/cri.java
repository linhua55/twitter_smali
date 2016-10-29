package defpackage;

import android.view.animation.Interpolator;

/* compiled from: Twttr */
/* renamed from: cri */
public class cri implements Interpolator {
    private float a;
    private float b;
    private float c;
    private final crk d;

    public cri() {
        this(new crk());
    }

    public cri(float f) {
        this(new crk(f));
    }

    public cri(float f, float f2) {
        this(f, f2, 1.0f);
    }

    public cri(float f, float f2, float f3) {
        this(new crk(f, f2, f3));
    }

    cri(crk crk) {
        this.a = 0.001f;
        this.b = 0.002f;
        this.c = 0.0f;
        this.d = crk;
    }

    public float getInterpolation(float f) {
        return 1.0f - this.d.a(a(f));
    }

    private float a(float f) {
        if (this.c <= 0.0f) {
            this.c = cri.a(this.d, this.a, this.b);
        }
        return this.c * f;
    }

    private static float a(crk crk, float f, float f2) {
        float a;
        float b;
        float f3 = 100.0f;
        float f4 = 0.0f;
        while (true) {
            f4 += f3;
            a = crk.a(f4);
            b = crk.b(f4);
            f3 *= 2.0f;
            if (Math.abs(a) <= f && Math.abs(b) <= f2) {
                break;
            }
        }
        float f5 = b;
        b = f4;
        f4 = f5;
        float f6 = a;
        a = f3;
        f3 = f6;
        while (a > 1.0f) {
            a /= 2.0f;
            if (Math.abs(f3) >= f || Math.abs(r0) >= f2) {
                f4 = b + a;
            } else {
                f4 = b - a;
            }
            b = crk.a(f4);
            f3 = b;
            b = f4;
            f4 = crk.b(f4);
        }
        return b;
    }
}
