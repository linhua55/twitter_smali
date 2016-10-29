package com.twitter.library.widget;

import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.Region.Op;
import android.graphics.drawable.Drawable;
import csf;

/* compiled from: Twttr */
class o extends csf {
    private final Rect a;

    o(Drawable drawable) {
        super(drawable);
        this.a = new Rect();
    }

    public void a(int i, int i2, int i3, int i4) {
        this.a.set(i, i2, i3, i4);
    }

    public void draw(Canvas canvas) {
        Drawable a = a();
        Rect bounds = getBounds();
        canvas.save();
        a(canvas, bounds, this.a);
        a.draw(canvas);
        canvas.restore();
    }

    private void a(Canvas canvas, Rect rect, Rect rect2) {
        if (rect.contains(rect2) && !this.a.isEmpty()) {
            canvas.clipRect(rect2, Op.DIFFERENCE);
        }
    }
}
