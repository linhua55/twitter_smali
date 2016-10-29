package com.facebook.drawee.drawable;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import defpackage.bx;

/* compiled from: Twttr */
public class h extends f {
    final Matrix a;
    private int c;
    private final Matrix d;
    private final RectF e;

    public h(Drawable drawable, int i) {
        super(drawable);
        this.d = new Matrix();
        this.e = new RectF();
        bx.a(i % 90 == 0);
        this.a = new Matrix();
        this.c = i;
    }

    public void draw(Canvas canvas) {
        if (this.c <= 0) {
            super.draw(canvas);
            return;
        }
        int save = canvas.save();
        canvas.concat(this.a);
        super.draw(canvas);
        canvas.restoreToCount(save);
    }

    public int getIntrinsicWidth() {
        return this.c % 180 == 0 ? super.getIntrinsicWidth() : super.getIntrinsicHeight();
    }

    public int getIntrinsicHeight() {
        return this.c % 180 == 0 ? super.getIntrinsicHeight() : super.getIntrinsicWidth();
    }

    protected void onBoundsChange(Rect rect) {
        Drawable current = getCurrent();
        if (this.c > 0) {
            this.a.setRotate((float) this.c, (float) rect.centerX(), (float) rect.centerY());
            this.d.reset();
            this.a.invert(this.d);
            this.e.set(rect);
            this.d.mapRect(this.e);
            current.setBounds((int) this.e.left, (int) this.e.top, (int) this.e.right, (int) this.e.bottom);
            return;
        }
        current.setBounds(rect);
    }

    public void a(Matrix matrix) {
        b(matrix);
        if (!this.a.isIdentity()) {
            matrix.preConcat(this.a);
        }
    }
}
