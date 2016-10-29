package com.twitter.util.math;

import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import com.twitter.util.object.ObjectUtils;
import com.twitter.util.serialization.n;

/* compiled from: Twttr */
public final class c {
    public static final n<c> a;
    public static final c b;
    public static final c c;
    public final float d;
    public final float e;
    public final float f;
    public final float g;

    static {
        a = new e();
        b = new c(0.0f, 0.0f, 0.0f, 0.0f);
        c = new c(0.0f, 0.0f, 1.0f, 1.0f);
    }

    public static c a(Rect rect, Size size) {
        return size.c() ? b : new c(((float) rect.left) / ((float) size.a()), ((float) rect.top) / ((float) size.b()), ((float) rect.right) / ((float) size.a()), ((float) rect.bottom) / ((float) size.b()));
    }

    public static c a(RectF rectF, Size size) {
        return size.c() ? b : new c(rectF.left / ((float) size.a()), rectF.top / ((float) size.b()), rectF.right / ((float) size.a()), rectF.bottom / ((float) size.b()));
    }

    public static c a(RectF rectF) {
        return new c(rectF.left, rectF.top, rectF.right, rectF.bottom);
    }

    public static c a(float f, float f2, float f3, float f4) {
        return new c(f, f2, f3, f4);
    }

    private c(float f, float f2, float f3, float f4) {
        this.d = f;
        this.e = f2;
        this.f = f3;
        this.g = f4;
    }

    public boolean a() {
        return this.d >= this.f || this.e >= this.g;
    }

    public boolean b() {
        return this.d == 0.0f && this.f == 1.0f && this.e == 0.0f && this.g == 1.0f;
    }

    public float c() {
        return this.f - this.d;
    }

    public float d() {
        return this.g - this.e;
    }

    public float e() {
        return (this.d + this.f) * 0.5f;
    }

    public float f() {
        return (this.e + this.g) * 0.5f;
    }

    public c a(Matrix matrix) {
        if (matrix.isIdentity()) {
            return this;
        }
        RectF rectF = new RectF();
        matrix.mapRect(rectF, g());
        return a(rectF);
    }

    public Rect a(Size size) {
        return new Rect(Math.round(this.d * ((float) size.a())), Math.round(this.e * ((float) size.b())), Math.round(this.f * ((float) size.a())), Math.round(this.g * ((float) size.b())));
    }

    public RectF b(Size size) {
        return new RectF(this.d * ((float) size.a()), this.e * ((float) size.b()), this.f * ((float) size.a()), this.g * ((float) size.b()));
    }

    public RectF g() {
        return new RectF(this.d, this.e, this.f, this.g);
    }

    public boolean equals(Object obj) {
        return this == obj || ((obj instanceof c) && a((c) obj));
    }

    public boolean a(c cVar) {
        return this == cVar || (cVar != null && Float.compare(cVar.d, this.d) == 0 && Float.compare(cVar.e, this.e) == 0 && Float.compare(cVar.f, this.f) == 0 && Float.compare(cVar.g, this.g) == 0);
    }

    public int hashCode() {
        return (((((ObjectUtils.a(this.d) * 31) + ObjectUtils.a(this.e)) * 31) + ObjectUtils.a(this.f)) * 31) + ObjectUtils.a(this.g);
    }

    public String toString() {
        return "RelativeRectangle(" + this.d + ", " + this.e + ", " + this.f + ", " + this.g + ")";
    }
}
