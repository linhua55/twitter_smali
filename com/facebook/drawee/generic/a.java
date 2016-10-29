package com.facebook.drawee.generic;

import android.content.res.Resources;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import bx;
import com.facebook.drawee.drawable.RoundedCornersDrawable;
import com.facebook.drawee.drawable.ScalingUtils.ScaleType;
import com.facebook.drawee.drawable.e;
import com.facebook.drawee.drawable.f;
import com.facebook.drawee.drawable.g;
import com.facebook.drawee.drawable.i;
import com.facebook.drawee.drawable.j;
import com.facebook.drawee.drawable.k;
import com.facebook.drawee.drawable.m;
import com.facebook.drawee.drawable.o;
import com.facebook.drawee.generic.RoundingParams.RoundingMethod;
import dm;
import javax.annotation.Nullable;

/* compiled from: Twttr */
public class a implements dm {
    private Drawable a;
    private final Drawable b;
    private final Drawable c;
    private final Resources d;
    private final b e;
    private final e f;
    private final o g;
    private final int h;
    private final int i;
    private final int j;
    private final int k;
    private final int l;
    private final int m;
    private RoundingParams n;

    a(c cVar) {
        int i;
        Drawable drawable;
        int i2;
        int i3;
        this.b = new ColorDrawable(0);
        this.c = new ColorDrawable(0);
        this.d = cVar.a();
        this.n = cVar.r();
        int size = cVar.o() != null ? cVar.o().size() : 0;
        int i4 = 0 + size;
        Drawable c = cVar.c();
        if (c == null) {
            c = g();
        }
        Drawable a = a(a(this.n, this.d, c), cVar.d());
        int i5 = i4 + 1;
        this.h = i4;
        this.g = new o(this.b);
        Drawable a2 = a(a(this.g, cVar.k(), cVar.m()), cVar.l());
        a2.setColorFilter(cVar.n());
        int i6 = i5 + 1;
        this.j = i5;
        c = cVar.i();
        if (c != null) {
            c = a(c, cVar.j());
            i4 = i6 + 1;
            this.i = i6;
        } else {
            this.i = -1;
            i4 = i6;
        }
        Drawable e = cVar.e();
        if (e != null) {
            e = a(e, cVar.f());
            i = i4 + 1;
            this.k = i4;
            drawable = e;
            i6 = i;
        } else {
            this.k = -1;
            Drawable drawable2 = e;
            i6 = i4;
            drawable = drawable2;
        }
        Drawable g = cVar.g();
        if (g != null) {
            g = a(g, cVar.h());
            i2 = i6 + 1;
            this.l = i6;
            e = g;
            i = i2;
        } else {
            this.l = -1;
            drawable2 = g;
            i = i6;
            e = drawable2;
        }
        i2 = cVar.p() != null ? cVar.p().size() : 0;
        if (cVar.q() != null) {
            i3 = 1;
        } else {
            i3 = 0;
        }
        int i7 = i2 + i3;
        i2 = i + i7;
        i3 = i2 + 1;
        this.m = i2;
        Drawable[] drawableArr = new Drawable[i3];
        if (size > 0) {
            i2 = 0;
            for (Drawable a3 : cVar.o()) {
                i3 = i2 + 1;
                drawableArr[i2 + 0] = a(this.n, this.d, a3);
                i2 = i3;
            }
        }
        if (this.h >= 0) {
            drawableArr[this.h] = a;
        }
        if (this.j >= 0) {
            drawableArr[this.j] = a2;
        }
        if (this.i >= 0) {
            drawableArr[this.i] = c;
        }
        if (this.k >= 0) {
            drawableArr[this.k] = drawable;
        }
        if (this.l >= 0) {
            drawableArr[this.l] = e;
        }
        if (i7 > 0) {
            if (cVar.p() != null) {
                i5 = 0;
                for (Drawable a32 : cVar.p()) {
                    i4 = i5 + 1;
                    drawableArr[i5 + i] = a32;
                    i5 = i4;
                }
            } else {
                i5 = 0;
            }
            if (cVar.q() != null) {
                size = i5 + 1;
                drawableArr[i + i5] = cVar.q();
            }
        }
        if (this.m >= 0) {
            drawableArr[this.m] = this.c;
        }
        this.f = new e(drawableArr);
        this.f.b(cVar.b());
        this.e = new b(a(this.n, this.f));
        this.e.mutate();
        e();
    }

    private static Drawable a(Drawable drawable, @Nullable ScaleType scaleType) {
        return a(drawable, scaleType, null);
    }

    private static Drawable a(Drawable drawable, @Nullable ScaleType scaleType, @Nullable PointF pointF) {
        bx.a(drawable);
        if (scaleType == null) {
            return drawable;
        }
        m mVar = new m(drawable, scaleType);
        if (pointF != null) {
            mVar.a(pointF);
        }
        return mVar;
    }

    private static Drawable a(Drawable drawable, @Nullable Matrix matrix) {
        bx.a(drawable);
        return matrix == null ? drawable : new g(drawable, matrix);
    }

    private static void a(i iVar, RoundingParams roundingParams) {
        iVar.a(roundingParams.a());
        iVar.a(roundingParams.b());
        iVar.a(roundingParams.f(), roundingParams.e());
    }

    private static Drawable a(@Nullable RoundingParams roundingParams, Drawable drawable) {
        if (roundingParams == null || roundingParams.c() != RoundingMethod.a) {
            return drawable;
        }
        i roundedCornersDrawable = new RoundedCornersDrawable(drawable);
        a(roundedCornersDrawable, roundingParams);
        roundedCornersDrawable.a(roundingParams.d());
        return roundedCornersDrawable;
    }

    private static Drawable a(@Nullable RoundingParams roundingParams, Resources resources, Drawable drawable) {
        if (roundingParams == null || roundingParams.c() != RoundingMethod.b) {
            return drawable;
        }
        if ((drawable instanceof BitmapDrawable) || (drawable instanceof ColorDrawable)) {
            return b(roundingParams, resources, drawable);
        }
        Drawable current = drawable.getCurrent();
        Drawable drawable2 = drawable;
        while (current != null && drawable2 != current) {
            if ((drawable2 instanceof f) && ((current instanceof BitmapDrawable) || (current instanceof ColorDrawable))) {
                ((f) drawable2).a(b(roundingParams, resources, current));
            }
            drawable2 = current;
            current = current.getCurrent();
        }
        return drawable;
    }

    private static Drawable b(@Nullable RoundingParams roundingParams, Resources resources, Drawable drawable) {
        i a;
        if (drawable instanceof BitmapDrawable) {
            a = j.a(resources, (BitmapDrawable) drawable);
            a(a, roundingParams);
            return a;
        } else if (!(drawable instanceof ColorDrawable) || VERSION.SDK_INT < 11) {
            return drawable;
        } else {
            a = k.a((ColorDrawable) drawable);
            a(a, roundingParams);
            return a;
        }
    }

    private void d() {
        if (this.g != null) {
            this.g.c(this.b);
        }
    }

    private void e() {
        if (this.f != null) {
            this.f.b();
            this.f.d();
            f();
            a(this.h);
            this.f.e();
            this.f.c();
        }
    }

    private void f() {
        b(this.h);
        b(this.j);
        b(this.i);
        b(this.k);
        b(this.l);
    }

    private void a(int i) {
        if (i >= 0) {
            this.f.c(i);
        }
    }

    private void b(int i) {
        if (i >= 0) {
            this.f.d(i);
        }
    }

    private void a(float f) {
        if (this.i >= 0) {
            Drawable d = d(this.i);
            if (f >= 0.999f) {
                if (d instanceof Animatable) {
                    ((Animatable) d).stop();
                }
                b(this.i);
            } else {
                if (d instanceof Animatable) {
                    ((Animatable) d).start();
                }
                a(this.i);
            }
            d.setLevel(Math.round(10000.0f * f));
        }
    }

    public Drawable a() {
        return this.e;
    }

    public void b() {
        d();
        e();
    }

    public void a(Drawable drawable, float f, boolean z) {
        Drawable a = a(this.n, this.d, drawable);
        a.mutate();
        this.g.c(a);
        this.f.b();
        f();
        a(this.j);
        a(f);
        if (z) {
            this.f.e();
        }
        this.f.c();
    }

    public void a(float f, boolean z) {
        this.f.b();
        a(f);
        if (z) {
            this.f.e();
        }
        this.f.c();
    }

    public void a(Throwable th) {
        this.f.b();
        f();
        if (this.l >= 0) {
            a(this.l);
        } else {
            a(this.h);
        }
        this.f.c();
    }

    public void b(Throwable th) {
        this.f.b();
        f();
        if (this.k >= 0) {
            a(this.k);
        } else {
            a(this.h);
        }
        this.f.c();
    }

    public void a(@Nullable Drawable drawable) {
        if (drawable == null) {
            drawable = this.c;
        }
        this.f.a(this.m, drawable);
    }

    private Drawable a(int i, boolean z) {
        Drawable current;
        e eVar = this.f;
        Drawable a = this.f.a(i);
        if (a instanceof g) {
            current = a.getCurrent();
        } else {
            Drawable drawable = a;
            a = eVar;
            current = drawable;
        }
        if (current instanceof m) {
            a = current.getCurrent();
        } else {
            drawable = current;
            current = a;
            a = drawable;
        }
        return z ? current : a;
    }

    @Nullable
    private m c(int i) {
        Drawable a = this.f.a(i);
        if (a instanceof g) {
            a = a.getCurrent();
        }
        if (a instanceof m) {
            return (m) a;
        }
        return null;
    }

    private void a(int i, Drawable drawable) {
        Drawable a = a(i, true);
        if (a == this.f) {
            this.f.a(i, drawable);
        } else {
            ((f) a).a(drawable);
        }
    }

    private Drawable d(int i) {
        return a(i, false);
    }

    private Drawable g() {
        if (this.a == null) {
            this.a = new ColorDrawable(0);
        }
        return this.a;
    }

    public void a(PointF pointF) {
        bx.a(pointF);
        m c = c(this.j);
        if (c == null) {
            throw new UnsupportedOperationException("ScaleTypeDrawable not found!");
        }
        c.a(pointF);
    }

    public void a(ScaleType scaleType) {
        bx.a(scaleType);
        m c = c(this.j);
        if (c == null) {
            throw new UnsupportedOperationException("ScaleTypeDrawable not found!");
        }
        c.a(scaleType);
    }

    public void b(Drawable drawable) {
        if (drawable == null) {
            drawable = g();
        }
        a(this.h, a(this.n, this.d, drawable));
    }

    public void a(RoundingParams roundingParams) {
        this.n = roundingParams;
        h();
        i();
    }

    private void h() {
        Drawable current = this.e.getCurrent();
        if (this.n == null || this.n.c() != RoundingMethod.a) {
            if (current instanceof RoundedCornersDrawable) {
                this.e.a(((RoundedCornersDrawable) current).a(this.b));
            }
        } else if (current instanceof RoundedCornersDrawable) {
            i iVar = (RoundedCornersDrawable) current;
            a(iVar, this.n);
            iVar.a(this.n.d());
        } else {
            this.e.a(a(this.n, this.e.a(this.b)));
        }
    }

    private void i() {
        int i;
        Drawable d;
        if (this.n == null || this.n.c() != RoundingMethod.b) {
            for (i = 0; i < this.f.a(); i++) {
                d = d(i);
                if (d instanceof i) {
                    a((i) d);
                }
            }
            return;
        }
        for (i = 0; i < this.f.a(); i++) {
            d = d(i);
            if (d instanceof i) {
                a((i) d, this.n);
            } else {
                a(i, this.b);
                a(i, a(this.n, this.d, d));
            }
        }
    }

    private static void a(i iVar) {
        iVar.a(false);
        iVar.a(0.0f);
        iVar.a(0, 0.0f);
    }

    public RoundingParams c() {
        return this.n;
    }
}
