package com.facebook.drawee.drawable;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.Callback;
import defpackage.bx;

/* compiled from: Twttr */
public class a extends Drawable implements Callback, p, q {
    private q a;
    private final c b;
    private final Drawable[] c;
    private final Rect d;
    private boolean e;
    private boolean f;
    private boolean g;

    public a(Drawable[] drawableArr) {
        int i = 0;
        this.b = new c();
        this.d = new Rect();
        this.e = false;
        this.f = false;
        this.g = false;
        bx.a((Object) drawableArr);
        this.c = drawableArr;
        while (i < this.c.length) {
            d.a(this.c[i], this, this);
            i++;
        }
    }

    public int a() {
        return this.c.length;
    }

    public Drawable a(int i) {
        return this.c[i];
    }

    public void a(int i, Drawable drawable) {
        boolean z = true;
        bx.a(i >= 0);
        if (i >= this.c.length) {
            z = false;
        }
        bx.a(z);
        if (drawable != this.c[i]) {
            if (this.g) {
                drawable = drawable.mutate();
            }
            d.a(this.c[i], null, null);
            d.a(drawable, null, null);
            d.a(drawable, this.b);
            d.a(drawable, this.c[i]);
            d.a(drawable, this, this);
            this.f = false;
            this.c[i] = drawable;
            invalidateSelf();
        }
    }

    public int getIntrinsicWidth() {
        int i = -1;
        for (Drawable intrinsicWidth : this.c) {
            i = Math.max(i, intrinsicWidth.getIntrinsicWidth());
        }
        return i > 0 ? i : -1;
    }

    public int getIntrinsicHeight() {
        int i = -1;
        for (Drawable intrinsicHeight : this.c) {
            i = Math.max(i, intrinsicHeight.getIntrinsicHeight());
        }
        return i > 0 ? i : -1;
    }

    protected void onBoundsChange(Rect rect) {
        for (Drawable bounds : this.c) {
            bounds.setBounds(rect);
        }
    }

    public boolean isStateful() {
        int i = 0;
        if (!this.f) {
            this.e = false;
            while (i < this.c.length) {
                this.e |= this.c[i].isStateful();
                i++;
            }
            this.f = true;
        }
        return this.e;
    }

    protected boolean onStateChange(int[] iArr) {
        int i = 0;
        boolean z = false;
        while (i < this.c.length) {
            if (this.c[i].setState(iArr)) {
                z = true;
            }
            i++;
        }
        return z;
    }

    protected boolean onLevelChange(int i) {
        int i2 = 0;
        boolean z = false;
        while (i2 < this.c.length) {
            if (this.c[i2].setLevel(i)) {
                z = true;
            }
            i2++;
        }
        return z;
    }

    public void draw(Canvas canvas) {
        for (Drawable draw : this.c) {
            draw.draw(canvas);
        }
    }

    public boolean getPadding(Rect rect) {
        int i = 0;
        rect.left = 0;
        rect.top = 0;
        rect.right = 0;
        rect.bottom = 0;
        Rect rect2 = this.d;
        while (i < this.c.length) {
            this.c[i].getPadding(rect2);
            rect.left = Math.max(rect.left, rect2.left);
            rect.top = Math.max(rect.top, rect2.top);
            rect.right = Math.max(rect.right, rect2.right);
            rect.bottom = Math.max(rect.bottom, rect2.bottom);
            i++;
        }
        return true;
    }

    public Drawable mutate() {
        for (Drawable mutate : this.c) {
            mutate.mutate();
        }
        this.g = true;
        return this;
    }

    public int getOpacity() {
        if (this.c.length == 0) {
            return -2;
        }
        int opacity = this.c[0].getOpacity();
        for (int i = 1; i < this.c.length; i++) {
            opacity = Drawable.resolveOpacity(opacity, this.c[i].getOpacity());
        }
        return opacity;
    }

    public void setAlpha(int i) {
        this.b.a(i);
        for (Drawable alpha : this.c) {
            alpha.setAlpha(i);
        }
    }

    public void setColorFilter(ColorFilter colorFilter) {
        this.b.a(colorFilter);
        for (Drawable colorFilter2 : this.c) {
            colorFilter2.setColorFilter(colorFilter);
        }
    }

    public void setDither(boolean z) {
        this.b.a(z);
        for (Drawable dither : this.c) {
            dither.setDither(z);
        }
    }

    public void setFilterBitmap(boolean z) {
        this.b.b(z);
        for (Drawable filterBitmap : this.c) {
            filterBitmap.setFilterBitmap(z);
        }
    }

    public boolean setVisible(boolean z, boolean z2) {
        boolean visible = super.setVisible(z, z2);
        for (Drawable visible2 : this.c) {
            visible2.setVisible(z, z2);
        }
        return visible;
    }

    public void invalidateDrawable(Drawable drawable) {
        invalidateSelf();
    }

    public void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
        scheduleSelf(runnable, j);
    }

    public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        unscheduleSelf(runnable);
    }

    public void a(q qVar) {
        this.a = qVar;
    }

    public void a(Matrix matrix) {
        if (this.a != null) {
            this.a.a(matrix);
        } else {
            matrix.reset();
        }
    }

    public void a(RectF rectF) {
        if (this.a != null) {
            this.a.a(rectF);
        } else {
            rectF.set(getBounds());
        }
    }
}
