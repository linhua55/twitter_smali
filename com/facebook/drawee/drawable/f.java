package com.facebook.drawee.drawable;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.Callback;

/* compiled from: Twttr */
public abstract class f extends Drawable implements Callback, p, q {
    private static final Matrix d;
    private Drawable a;
    protected q b;
    private final c c;

    static {
        d = new Matrix();
    }

    public f(Drawable drawable) {
        this.c = new c();
        this.a = drawable;
        d.a(this.a, this, this);
    }

    public Drawable a(Drawable drawable) {
        Drawable b = b(drawable);
        invalidateSelf();
        return b;
    }

    protected Drawable b(Drawable drawable) {
        Drawable drawable2 = this.a;
        d.a(drawable2, null, null);
        d.a(drawable, null, null);
        d.a(drawable, this.c);
        d.a(drawable, drawable2);
        d.a(drawable, this, this);
        this.a = drawable;
        return drawable2;
    }

    public int getOpacity() {
        return this.a.getOpacity();
    }

    public void setAlpha(int i) {
        this.c.a(i);
        this.a.setAlpha(i);
    }

    public void setColorFilter(ColorFilter colorFilter) {
        this.c.a(colorFilter);
        this.a.setColorFilter(colorFilter);
    }

    public void setDither(boolean z) {
        this.c.a(z);
        this.a.setDither(z);
    }

    public void setFilterBitmap(boolean z) {
        this.c.b(z);
        this.a.setFilterBitmap(z);
    }

    public boolean setVisible(boolean z, boolean z2) {
        super.setVisible(z, z2);
        return this.a.setVisible(z, z2);
    }

    protected void onBoundsChange(Rect rect) {
        this.a.setBounds(rect);
    }

    public boolean isStateful() {
        return this.a.isStateful();
    }

    protected boolean onStateChange(int[] iArr) {
        return this.a.setState(iArr);
    }

    protected boolean onLevelChange(int i) {
        return this.a.setLevel(i);
    }

    public void draw(Canvas canvas) {
        this.a.draw(canvas);
    }

    public int getIntrinsicWidth() {
        return this.a.getIntrinsicWidth();
    }

    public int getIntrinsicHeight() {
        return this.a.getIntrinsicHeight();
    }

    public boolean getPadding(Rect rect) {
        return this.a.getPadding(rect);
    }

    public Drawable mutate() {
        this.a.mutate();
        return this;
    }

    public Drawable getCurrent() {
        return this.a;
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
        this.b = qVar;
    }

    protected void b(Matrix matrix) {
        if (this.b != null) {
            this.b.a(matrix);
        } else {
            matrix.reset();
        }
    }

    public void a(Matrix matrix) {
        b(matrix);
    }

    public void a(RectF rectF) {
        if (this.b != null) {
            this.b.a(rectF);
        } else {
            rectF.set(getBounds());
        }
    }
}
