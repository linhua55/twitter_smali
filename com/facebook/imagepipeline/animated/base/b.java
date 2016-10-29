package com.facebook.imagepipeline.animated.base;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import com.facebook.common.references.a;
import cr;
import defpackage.cb;
import defpackage.cl;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* compiled from: Twttr */
public class b extends Drawable implements a, cr {
    private static final Class<?> a;
    private boolean A;
    private long B;
    private final Runnable C;
    private final Runnable D;
    private final Runnable E;
    private final Runnable F;
    private final ScheduledExecutorService b;
    private final i c;
    private final cl d;
    private final int e;
    private final int f;
    private final Paint g;
    private final Rect h;
    private final Paint i;
    private volatile String j;
    private h k;
    private long l;
    private int m;
    private int n;
    private int o;
    private int p;
    private int q;
    private int r;
    private a<Bitmap> s;
    private boolean t;
    private long u;
    private boolean v;
    private boolean w;
    private float x;
    private float y;
    private boolean z;

    static {
        a = b.class;
    }

    public b(ScheduledExecutorService scheduledExecutorService, h hVar, i iVar, cl clVar) {
        this.g = new Paint(6);
        this.h = new Rect();
        this.q = -1;
        this.r = -1;
        this.u = -1;
        this.x = 1.0f;
        this.y = 1.0f;
        this.B = -1;
        this.C = new c(this);
        this.D = new d(this);
        this.E = new e(this);
        this.F = new f(this);
        this.b = scheduledExecutorService;
        this.k = hVar;
        this.c = iVar;
        this.d = clVar;
        this.e = this.k.b();
        this.f = this.k.c();
        this.c.a(this.k);
        this.i = new Paint();
        this.i.setColor(0);
        this.i.setStyle(Style.FILL);
        c();
    }

    private void c() {
        this.m = this.k.h();
        this.n = this.m;
        this.o = -1;
        this.p = -1;
    }

    protected void finalize() throws Throwable {
        super.finalize();
        if (this.s != null) {
            this.s.close();
            this.s = null;
        }
    }

    public int getIntrinsicWidth() {
        return this.k.d();
    }

    public int getIntrinsicHeight() {
        return this.k.e();
    }

    public void setAlpha(int i) {
        this.g.setAlpha(i);
        h();
    }

    public void setColorFilter(ColorFilter colorFilter) {
        this.g.setColorFilter(colorFilter);
        h();
    }

    public int getOpacity() {
        return -3;
    }

    protected void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.z = true;
        if (this.s != null) {
            this.s.close();
            this.s = null;
        }
        this.q = -1;
        this.r = -1;
        this.k.j();
    }

    private void d() {
        if (this.v) {
            this.c.a();
            try {
                this.l = this.d.now();
                this.m = 0;
                this.n = 0;
                long d = this.l + ((long) this.k.d(0));
                scheduleSelf(this.D, d);
                this.B = d;
                h();
            } finally {
                this.c.b();
            }
        }
    }

    private void e() {
        this.B = -1;
        if (this.v && this.e != 0) {
            this.c.c();
            try {
                a(true);
            } finally {
                this.c.d();
            }
        }
    }

    private void a(boolean z) {
        if (this.e != 0) {
            long now = this.d.now();
            int i = (int) ((now - this.l) / ((long) this.e));
            int i2 = (int) ((now - this.l) % ((long) this.e));
            int b = this.k.b(i2);
            Object obj = this.m != b ? 1 : null;
            this.m = b;
            this.n = (i * this.f) + b;
            if (!z) {
                return;
            }
            if (obj != null) {
                h();
                return;
            }
            int c = (this.k.c(this.m) + this.k.d(this.m)) - i2;
            i = (this.m + 1) % this.f;
            now += (long) c;
            if (this.B == -1 || this.B > now) {
                cb.a(a, "(%s) Next frame (%d) in %d ms", this.j, Integer.valueOf(i), Integer.valueOf(c));
                unscheduleSelf(this.D);
                scheduleSelf(this.D, now);
                this.B = now;
            }
        }
    }

    public void draw(Canvas canvas) {
        int i = 0;
        this.c.e();
        try {
            this.t = false;
            if (this.v && !this.w) {
                this.b.schedule(this.F, 2000, TimeUnit.MILLISECONDS);
                this.w = true;
            }
            if (this.z) {
                this.h.set(getBounds());
                if (!this.h.isEmpty()) {
                    h b = this.k.b(this.h);
                    if (b != this.k) {
                        this.k.j();
                        this.k = b;
                        this.c.a(b);
                    }
                    this.x = ((float) this.h.width()) / ((float) this.k.f());
                    this.y = ((float) this.h.height()) / ((float) this.k.g());
                    this.z = false;
                }
            }
            if (!this.h.isEmpty()) {
                boolean a;
                canvas.save();
                canvas.scale(this.x, this.y);
                if (this.o != -1) {
                    a = a(canvas, this.o, this.p);
                    i = 0 | a;
                    if (a) {
                        cb.a(a, "(%s) Rendered pending frame %d", this.j, Integer.valueOf(this.o));
                        this.o = -1;
                        this.p = -1;
                    } else {
                        cb.a(a, "(%s) Trying again later for pending %d", this.j, Integer.valueOf(this.o));
                        f();
                    }
                }
                if (this.o == -1) {
                    if (this.v) {
                        a(false);
                    }
                    a = a(canvas, this.m, this.n);
                    i |= a;
                    if (a) {
                        cb.a(a, "(%s) Rendered current frame %d", this.j, Integer.valueOf(this.m));
                        if (this.v) {
                            a(true);
                        }
                    } else {
                        cb.a(a, "(%s) Trying again later for current %d", this.j, Integer.valueOf(this.m));
                        this.o = this.m;
                        this.p = this.n;
                        f();
                    }
                }
                if (i == 0 && this.s != null) {
                    canvas.drawBitmap((Bitmap) this.s.a(), 0.0f, 0.0f, this.g);
                    cb.a(a, "(%s) Rendered last known frame %d", this.j, Integer.valueOf(this.q));
                    i = 1;
                }
                if (i == 0) {
                    a k = this.k.k();
                    if (k != null) {
                        canvas.drawBitmap((Bitmap) k.a(), 0.0f, 0.0f, this.g);
                        k.close();
                        cb.a(a, "(%s) Rendered preview frame", this.j);
                        i = 1;
                    }
                }
                if (i == 0) {
                    canvas.drawRect(0.0f, 0.0f, (float) this.h.width(), (float) this.h.height(), this.i);
                    cb.a(a, "(%s) Failed to draw a frame", this.j);
                }
                canvas.restore();
                this.c.a(canvas, this.h);
                this.c.f();
            }
        } finally {
            this.c.f();
        }
    }

    private void f() {
        if (!this.A) {
            this.A = true;
            scheduleSelf(this.E, 5);
        }
    }

    private boolean a(Canvas canvas, int i, int i2) {
        a g = this.k.g(i);
        if (g == null) {
            return false;
        }
        canvas.drawBitmap((Bitmap) g.a(), 0.0f, 0.0f, this.g);
        if (this.s != null) {
            this.s.close();
        }
        if (this.v && i2 > this.r) {
            int i3 = (i2 - this.r) - 1;
            this.c.b(1);
            this.c.a(i3);
            if (i3 > 0) {
                cb.a(a, "(%s) Dropped %d frames", this.j, Integer.valueOf(i3));
            }
        }
        this.s = g;
        this.q = i;
        this.r = i2;
        cb.a(a, "(%s) Drew frame %d", this.j, Integer.valueOf(i));
        return true;
    }

    private void g() {
        boolean z = false;
        this.w = false;
        if (this.v) {
            long now = this.d.now();
            boolean z2 = this.t && now - this.u > 1000;
            if (this.B != -1 && now - this.B > 1000) {
                z = true;
            }
            if (z2 || r2) {
                a();
                h();
                return;
            }
            this.b.schedule(this.F, 2000, TimeUnit.MILLISECONDS);
            this.w = true;
        }
    }

    private void h() {
        this.t = true;
        this.u = this.d.now();
        invalidateSelf();
    }

    public void start() {
        if (this.e != 0 && this.f > 1) {
            this.v = true;
            scheduleSelf(this.C, this.d.now());
        }
    }

    public void stop() {
        this.v = false;
    }

    public boolean isRunning() {
        return this.v;
    }

    protected boolean onLevelChange(int i) {
        if (this.v) {
            return false;
        }
        int b = this.k.b(i);
        if (b == this.m) {
            return false;
        }
        try {
            this.m = b;
            this.n = b;
            h();
            return true;
        } catch (IllegalStateException e) {
            return false;
        }
    }

    public void a() {
        cb.a(a, "(%s) Dropping caches", this.j);
        if (this.s != null) {
            this.s.close();
            this.s = null;
            this.q = -1;
            this.r = -1;
        }
        this.k.j();
    }
}
