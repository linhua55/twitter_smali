package com.twitter.android.media.stickers;

import cjw;
import com.twitter.util.math.Size;
import defpackage.ckf;
import defpackage.ckj;

/* compiled from: Twttr */
public class k {
    public final cjw a;
    private float b;
    private float c;
    private float d;
    private float e;

    public k(ckf ckf) {
        this.a = ckf.b;
        ckj ckj = ckf.c;
        this.d = ckj.b;
        this.b = ckj.d;
        this.c = ckj.e;
        this.e = ckj.c;
    }

    public k(cjw cjw, float f) {
        this.a = cjw;
        this.e = f;
    }

    public Size a(int i) {
        return Size.a(((float) i) * this.d, (((float) i) * b()) * this.d);
    }

    public float a() {
        return this.d;
    }

    public float b() {
        return this.a.j.b;
    }

    public void a(float f, float f2, int i) {
        this.b += f / ((float) i);
        this.c += f2 / ((float) i);
    }

    public float b(int i) {
        return this.b * ((float) i);
    }

    public float c(int i) {
        return this.c * ((float) i);
    }

    public void a(float f) {
        this.d = f;
    }

    public void a(float f, int i) {
        float f2 = this.d;
        float f3 = f / ((float) i);
        float f4 = f2 - (2.0f * f3);
        if ((f4 <= 0.1f && f3 > 0.0f) || (f4 >= 2.0f && f3 < 0.0f)) {
            f3 = f2 <= 0.1f ? Math.max((f2 - 0.1f) / 2.0f, 0.0f) : Math.min((2.0f - f2) / 2.0f, 0.0f);
        }
        a(f2 - f3);
        a(f3 / 2.0f, (f3 * b()) / 2.0f, 1);
    }

    public void b(float f) {
        this.e = f;
    }

    public float c() {
        return this.e;
    }

    public ckj d() {
        return new ckj(this.d, this.e, this.b, this.c);
    }
}
