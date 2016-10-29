package com.facebook.drawee.drawable;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import defpackage.bx;

/* compiled from: Twttr */
public class g extends f {
    private Matrix a;
    private Matrix c;
    private int d;
    private int e;

    public g(Drawable drawable, Matrix matrix) {
        super((Drawable) bx.a((Object) drawable));
        this.d = 0;
        this.e = 0;
        this.a = matrix;
    }

    public void draw(Canvas canvas) {
        a();
        if (this.c != null) {
            int save = canvas.save();
            canvas.clipRect(getBounds());
            canvas.concat(this.c);
            super.draw(canvas);
            canvas.restoreToCount(save);
            return;
        }
        super.draw(canvas);
    }

    protected void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        b();
    }

    private void a() {
        if (this.d != getCurrent().getIntrinsicWidth() || this.e != getCurrent().getIntrinsicHeight()) {
            b();
        }
    }

    private void b() {
        Drawable current = getCurrent();
        Rect bounds = getBounds();
        int intrinsicWidth = current.getIntrinsicWidth();
        this.d = intrinsicWidth;
        int intrinsicHeight = current.getIntrinsicHeight();
        this.e = intrinsicHeight;
        if (intrinsicWidth <= 0 || intrinsicHeight <= 0) {
            current.setBounds(bounds);
            this.c = null;
            return;
        }
        current.setBounds(0, 0, intrinsicWidth, intrinsicHeight);
        this.c = this.a;
    }

    public void a(Matrix matrix) {
        super.a(matrix);
        if (this.c != null) {
            matrix.preConcat(this.c);
        }
    }
}
