package com.facebook.imagepipeline.animated.impl;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Rect;
import com.facebook.imagepipeline.animated.base.AnimatedDrawableFrameInfo;
import com.facebook.imagepipeline.animated.base.g;
import com.facebook.imagepipeline.animated.base.l;
import com.facebook.imagepipeline.animated.base.m;
import com.facebook.imagepipeline.animated.base.n;
import defpackage.bx;
import dt;
import javax.annotation.concurrent.GuardedBy;

/* compiled from: Twttr */
public class a implements g {
    private final dt a;
    private final n b;
    private final l c;
    private final Rect d;
    private final int[] e;
    private final int[] f;
    private final int g;
    private final AnimatedDrawableFrameInfo[] h;
    @GuardedBy("this")
    private Bitmap i;

    public a(dt dtVar, n nVar, Rect rect) {
        this.a = dtVar;
        this.b = nVar;
        this.c = nVar.a();
        this.e = this.c.d();
        this.a.a(this.e);
        this.g = this.a.b(this.e);
        this.f = this.a.c(this.e);
        this.d = a(this.c, rect);
        this.h = new AnimatedDrawableFrameInfo[this.c.c()];
        for (int i = 0; i < this.c.c(); i++) {
            this.h[i] = this.c.b(i);
        }
    }

    private static Rect a(l lVar, Rect rect) {
        if (rect == null) {
            return new Rect(0, 0, lVar.a(), lVar.b());
        }
        return new Rect(0, 0, Math.min(rect.width(), lVar.a()), Math.min(rect.height(), lVar.b()));
    }

    public n a() {
        return this.b;
    }

    public int b() {
        return this.g;
    }

    public int c() {
        return this.c.c();
    }

    public int d() {
        return this.c.a();
    }

    public int e() {
        return this.c.b();
    }

    public int f() {
        return this.d.width();
    }

    public int g() {
        return this.d.height();
    }

    public AnimatedDrawableFrameInfo a(int i) {
        return this.h[i];
    }

    public int b(int i) {
        return this.a.a(this.f, i);
    }

    public int c(int i) {
        bx.a(i, this.f.length);
        return this.f[i];
    }

    public int d(int i) {
        return this.e[i];
    }

    public int h() {
        return this.b.b();
    }

    public g a(Rect rect) {
        return a(this.c, rect).equals(this.d) ? this : new a(this.a, this.b, rect);
    }

    public synchronized int i() {
        int i;
        i = 0;
        if (this.i != null) {
            i = 0 + this.a.a(this.i);
        }
        return i + this.c.f();
    }

    public com.facebook.common.references.a<Bitmap> e(int i) {
        return this.b.a(i);
    }

    public boolean f(int i) {
        return this.b.b(i);
    }

    public void a(int i, Canvas canvas) {
        m a = this.c.a(i);
        try {
            if (this.c.e()) {
                b(canvas, a);
            } else {
                a(canvas, a);
            }
            a.a();
        } catch (Throwable th) {
            a.a();
        }
    }

    private void b(Canvas canvas, m mVar) {
        double width = ((double) this.d.width()) / ((double) this.c.a());
        double height = ((double) this.d.height()) / ((double) this.c.b());
        int round = (int) Math.round(((double) mVar.b()) * width);
        int round2 = (int) Math.round(((double) mVar.c()) * height);
        int d = (int) (width * ((double) mVar.d()));
        int e = (int) (height * ((double) mVar.e()));
        synchronized (this) {
            if (this.i == null) {
                this.i = Bitmap.createBitmap(this.d.width(), this.d.height(), Config.ARGB_8888);
            }
            this.i.eraseColor(0);
            mVar.a(round, round2, this.i);
            canvas.drawBitmap(this.i, (float) d, (float) e, null);
        }
    }

    public void a(Canvas canvas, m mVar) {
        int b = mVar.b();
        int c = mVar.c();
        int d = mVar.d();
        int e = mVar.e();
        synchronized (this) {
            if (this.i == null) {
                this.i = Bitmap.createBitmap(this.c.a(), this.c.b(), Config.ARGB_8888);
            }
            this.i.eraseColor(0);
            mVar.a(b, c, this.i);
            float width = ((float) this.d.width()) / ((float) this.c.a());
            float height = ((float) this.d.height()) / ((float) this.c.b());
            canvas.save();
            canvas.scale(width, height);
            canvas.translate((float) d, (float) e);
            canvas.drawBitmap(this.i, 0.0f, 0.0f, null);
            canvas.restore();
        }
    }

    public synchronized void j() {
        if (this.i != null) {
            this.i.recycle();
            this.i = null;
        }
    }
}
