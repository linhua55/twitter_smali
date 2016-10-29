package com.facebook.drawee.drawable;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import com.facebook.drawee.drawable.ScalingUtils.ScaleType;
import defpackage.bx;

/* compiled from: Twttr */
public class m extends f {
    ScaleType a;
    PointF c;
    int d;
    int e;
    Matrix f;
    private Matrix g;

    public m(Drawable drawable, ScaleType scaleType) {
        super((Drawable) bx.a((Object) drawable));
        this.c = null;
        this.d = 0;
        this.e = 0;
        this.g = new Matrix();
        this.a = scaleType;
    }

    public void a(ScaleType scaleType) {
        this.a = scaleType;
        a();
        invalidateSelf();
    }

    public void a(PointF pointF) {
        if (this.c == null) {
            this.c = new PointF();
        }
        this.c.set(pointF);
        a();
        invalidateSelf();
    }

    public void draw(Canvas canvas) {
        b();
        if (this.f != null) {
            int save = canvas.save();
            canvas.clipRect(getBounds());
            canvas.concat(this.f);
            super.draw(canvas);
            canvas.restoreToCount(save);
            return;
        }
        super.draw(canvas);
    }

    protected void onBoundsChange(Rect rect) {
        a();
    }

    private void b() {
        if (this.d != getCurrent().getIntrinsicWidth() || this.e != getCurrent().getIntrinsicHeight()) {
            a();
        }
    }

    void a() {
        float f = 0.5f;
        Drawable current = getCurrent();
        Rect bounds = getBounds();
        int width = bounds.width();
        int height = bounds.height();
        int intrinsicWidth = current.getIntrinsicWidth();
        this.d = intrinsicWidth;
        int intrinsicHeight = current.getIntrinsicHeight();
        this.e = intrinsicHeight;
        if (intrinsicWidth <= 0 || intrinsicHeight <= 0) {
            current.setBounds(bounds);
            this.f = null;
        } else if (intrinsicWidth == width && intrinsicHeight == height) {
            current.setBounds(bounds);
            this.f = null;
        } else if (this.a == ScaleType.FIT_XY) {
            current.setBounds(bounds);
            this.f = null;
        } else {
            current.setBounds(0, 0, intrinsicWidth, intrinsicHeight);
            Matrix matrix = this.g;
            float f2 = this.c != null ? this.c.x : 0.5f;
            if (this.c != null) {
                f = this.c.y;
            }
            ScalingUtils.a(matrix, bounds, intrinsicWidth, intrinsicHeight, f2, f, this.a);
            this.f = this.g;
        }
    }

    public void a(Matrix matrix) {
        b(matrix);
        b();
        if (this.f != null) {
            matrix.preConcat(this.f);
        }
    }
}
