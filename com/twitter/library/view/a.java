package com.twitter.library.view;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import com.twitter.util.ui.h;

/* compiled from: Twttr */
class a extends Drawable {
    private final Paint a;
    private final float b;
    private int c;
    private final int d;
    private int e;
    private final Path f;

    a(int i, int i2, int i3) {
        this.f = new Path();
        this.d = i2;
        this.b = (float) (((double) i3) / Math.sqrt(2.0d));
        this.a = new Paint(1);
        this.a.setStyle(Style.FILL);
        this.a.setStrokeWidth(0.0f);
        this.e = i;
    }

    public void draw(Canvas canvas) {
        Rect bounds = getBounds();
        this.a.setColor(this.e);
        float f = this.b;
        float f2 = (float) bounds.right;
        Path path = this.f;
        path.reset();
        path.moveTo((float) bounds.left, (float) this.d);
        path.lineTo((float) (this.c - this.d), (float) this.d);
        path.lineTo(((float) this.c) - f, f);
        path.quadTo((float) this.c, 0.0f, ((float) this.c) + f, f);
        path.lineTo((float) (this.c + this.d), (float) this.d);
        path.lineTo(f2, (float) this.d);
        path.lineTo(f2, (float) bounds.bottom);
        path.lineTo((float) bounds.left, (float) bounds.bottom);
        path.close();
        canvas.drawPath(this.f, this.a);
    }

    public void setAlpha(int i) {
        this.e = h.a(this.e, i);
    }

    public void setColorFilter(ColorFilter colorFilter) {
    }

    public int getOpacity() {
        return 0;
    }

    public void a(int i) {
        if (this.c != i) {
            this.c = i;
            invalidateSelf();
        }
    }
}
