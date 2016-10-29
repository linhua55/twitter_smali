package com.twitter.library.widget;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.ConstantState;
import com.twitter.library.util.al;
import com.twitter.library.util.an;

/* compiled from: Twttr */
public class af extends Drawable implements Animatable, Runnable {
    private final int a;
    private final int b;
    private final int c;
    private final int d;
    private ag e;
    private ah f;
    private Rect g;
    private boolean h;
    private boolean i;
    private int j;
    private boolean k;
    private boolean l;

    public af(BitmapDrawable bitmapDrawable, al alVar, an anVar, long j) {
        this(new ag(bitmapDrawable, alVar, anVar, new Paint(), j));
    }

    protected af(ag agVar) {
        this.g = new Rect();
        this.j = -1;
        this.e = agVar;
        this.a = agVar.a.getIntrinsicWidth() / agVar.b.b;
        this.b = agVar.a.getIntrinsicHeight() / agVar.b.a;
        this.g.right = this.a;
        this.g.bottom = this.b;
        this.c = this.a;
        this.d = this.b;
    }

    public ConstantState getConstantState() {
        return this.e;
    }

    public int getIntrinsicWidth() {
        return this.c;
    }

    public int getIntrinsicHeight() {
        return this.d;
    }

    public void draw(Canvas canvas) {
        canvas.drawBitmap(this.e.a.getBitmap(), this.g, getBounds(), this.e.d);
    }

    public int getAlpha() {
        return this.e.d.getAlpha();
    }

    public void setAlpha(int i) {
        if (i != this.e.d.getAlpha()) {
            this.e.d.setAlpha(i);
            invalidateSelf();
        }
    }

    public ColorFilter getColorFilter() {
        return this.e.d.getColorFilter();
    }

    public void setColorFilter(ColorFilter colorFilter) {
        this.e.d.setColorFilter(colorFilter);
        invalidateSelf();
    }

    public int getOpacity() {
        return -3;
    }

    public boolean setVisible(boolean z, boolean z2) {
        int i = 0;
        boolean visible = super.setVisible(z, z2);
        if (!z) {
            a((Runnable) this);
        } else if (z2 || visible) {
            int i2 = (z2 || this.j < 0 || this.j >= this.e.b.c) ? true : 0;
            if (i2 == 0) {
                i = this.j;
            }
            a(i, true, this.h);
        }
        return visible;
    }

    public void start() {
        this.j = this.l ? this.e.b.c : -1;
        this.h = true;
        if (!isRunning()) {
            run();
        }
    }

    public void stop() {
        this.h = false;
        if (isRunning()) {
            a((Runnable) this);
        }
    }

    public boolean isRunning() {
        return this.i;
    }

    public void run() {
        if (this.l) {
            b();
        } else {
            a();
        }
    }

    private void a() {
        boolean z = false;
        int i = this.j + 1;
        int i2 = this.e.b.c;
        if (i >= i2) {
            i = 0;
        }
        if (i != i2 - 1) {
            z = true;
        } else if (this.f != null) {
            this.f.a();
        }
        a(i, true, z);
    }

    private void b() {
        boolean z;
        int i = this.j - 1;
        int i2 = this.e.b.c;
        if (i < 0) {
            i2--;
        } else {
            i2 = i;
        }
        if (i2 == 0) {
            z = false;
        } else {
            z = true;
        }
        a(i2, true, z);
    }

    private void a(Runnable runnable) {
        this.i = false;
        unscheduleSelf(runnable);
    }

    private void a(int i, boolean z, boolean z2) {
        if (i < this.e.b.c && i >= 0) {
            this.h = z2;
            this.j = i;
            this.g.offsetTo((i % this.e.b.b) * this.a, (i / this.e.b.b) * this.b);
            invalidateSelf();
            if (z || z2) {
                a((Runnable) this);
            }
            if (z2) {
                this.j = i;
                this.i = true;
                scheduleSelf(this, this.e.c.a() + this.e.e);
            }
        }
    }

    public Drawable mutate() {
        if (!this.k) {
            this.e = new ag(this.e);
            this.k = true;
        }
        return this;
    }

    public void a(ah ahVar) {
        this.f = ahVar;
    }
}
