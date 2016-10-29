package com.twitter.media.decoder;

import android.graphics.Matrix;
import android.graphics.Rect;
import com.twitter.media.util.ImageOrientation;
import com.twitter.util.math.Size;
import com.twitter.util.math.b;
import com.twitter.util.math.c;

/* compiled from: Twttr */
class f {
    private Size a;
    private ImageOrientation b;
    private boolean c;
    private boolean d;
    private boolean e;
    private c f;
    private Size g;
    private int h;
    private e i;

    f() {
        this.a = Size.b;
        this.b = ImageOrientation.a;
        this.g = Size.b;
        this.i = e.a;
    }

    public Size a() {
        return this.a;
    }

    public f a(Size size) {
        this.a = size;
        return this;
    }

    public f a(ImageOrientation imageOrientation) {
        this.b = imageOrientation;
        return this;
    }

    public f a(boolean z) {
        this.c = z;
        return this;
    }

    public f b(boolean z) {
        this.d = z;
        return this;
    }

    public f a(e eVar) {
        this.i = eVar;
        return this;
    }

    public f c(boolean z) {
        this.e = z;
        return this;
    }

    public c b() {
        return this.f;
    }

    public f a(c cVar) {
        this.f = cVar;
        return this;
    }

    public f b(Size size) {
        this.g = size;
        return this;
    }

    public f a(int i) {
        this.h = i;
        return this;
    }

    public boolean c() {
        return !this.a.c();
    }

    public Rect c(Size size) {
        Rect f;
        if (this.f == null || this.f.a()) {
            f = size.f();
        } else {
            f = this.b.b().a(this.f).a(size);
        }
        return this.d ? a(f, d()) : f;
    }

    public Size d(Size size) {
        if (!(this.f == null || this.f.a())) {
            if (this.b.degrees % 180 == 0) {
                size = size.b(this.f.c(), this.f.d());
            } else {
                size = size.b(this.f.d(), this.f.c());
            }
        }
        return this.d ? size.b(d()) : size;
    }

    public int e(Size size) {
        int i = 1;
        if (c()) {
            g a = a(size, this.i);
            for (int i2 = a.a / 2; i2 >= a.b; i2 /= 2) {
                i *= 2;
            }
        }
        return i;
    }

    public float f(Size size) {
        if (!c()) {
            return 1.0f;
        }
        g a = a(size, e.a);
        float f = ((float) a.b) / ((float) a.a);
        return !this.e ? Math.min(f, 1.0f) : f;
    }

    public Matrix g(Size size) {
        Matrix a = this.b.a();
        if (i(size)) {
            float f = f(size);
            if (f != 1.0f) {
                a.postScale(f, f);
            }
        }
        return a;
    }

    public Size h(Size size) {
        Size d = d(size);
        int e = e(size);
        int a = d.a();
        int b = d.b();
        int i = 1;
        while (i < e && i <= 8) {
            a = (a + 1) / 2;
            b = (b + 1) / 2;
            i *= 2;
        }
        i = (e * a) / d.a();
        Size a2 = Size.a(a / i, b / i);
        return Size.a(b.a(a2.f(), g(a2)));
    }

    private float d() {
        float e = this.a.e();
        return this.b.degrees % 180 == 0 ? e : 1.0f / e;
    }

    private g a(Size size, e eVar) {
        int a;
        int a2;
        Size size2;
        Size a3 = this.b.a(d(size));
        if ((a3.a(this.a) ^ this.c) != 0) {
            a = a3.a();
            a2 = (int) (((float) this.a.a()) * eVar.d);
        } else {
            a = a3.b();
            a2 = (int) (((float) this.a.b()) * eVar.d);
        }
        Size a4 = a3.a(((float) a2) / ((float) a));
        if (this.g.c() || this.g.b(a4)) {
            size2 = a4;
        } else {
            size2 = a4.c(this.g);
        }
        if (this.h > 0) {
            int a5 = size2.a() * size2.b();
            if (a5 > this.h) {
                size2 = size2.a((float) Math.sqrt((double) (((float) this.h) / ((float) a5))));
            }
        }
        if (a4 != size2) {
            a2 = (size2.a() * a) / a3.a();
        }
        return new g(a, a2);
    }

    private static Rect a(Rect rect, float f) {
        int width = rect.width();
        int height = rect.height();
        float f2 = ((float) width) / ((float) height);
        if (f == 0.0f || f2 == 0.0f || f == f2) {
            return rect;
        }
        if (f < f2) {
            height = (int) (((float) height) * f);
            int i = rect.left + ((width - height) / 2);
            return new Rect(i, rect.top, height + i, rect.bottom);
        }
        i = (int) (((float) width) / f);
        height = ((height - i) / 2) + rect.top;
        return new Rect(rect.left, height, rect.right, i + height);
    }

    private boolean i(Size size) {
        return ((float) size.b()) > ((float) this.a.b()) * this.i.e || ((float) size.a()) > ((float) this.a.a()) * this.i.e || ((((float) size.b()) < ((float) this.a.b()) * this.i.d || ((float) size.a()) < ((float) this.a.a()) * this.i.d) && this.e);
    }
}
