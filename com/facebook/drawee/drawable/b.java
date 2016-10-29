package com.facebook.drawee.drawable;

import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import defpackage.bx;

/* compiled from: Twttr */
public class b extends f implements Runnable {
    float a;
    private int c;
    private boolean d;
    private boolean e;

    public b(Drawable drawable, int i) {
        this(drawable, i, true);
    }

    public b(Drawable drawable, int i, boolean z) {
        super((Drawable) bx.a((Object) drawable));
        this.a = 0.0f;
        this.e = false;
        this.c = i;
        this.d = z;
    }

    public void draw(Canvas canvas) {
        int save = canvas.save();
        Rect bounds = getBounds();
        int i = bounds.right - bounds.left;
        int i2 = bounds.bottom - bounds.top;
        float f = this.a;
        if (!this.d) {
            f = 360.0f - this.a;
        }
        canvas.rotate(f, (float) ((i / 2) + bounds.left), (float) (bounds.top + (i2 / 2)));
        super.draw(canvas);
        canvas.restoreToCount(save);
        a();
    }

    public void run() {
        this.e = false;
        this.a += (float) b();
        invalidateSelf();
    }

    private void a() {
        if (!this.e) {
            this.e = true;
            scheduleSelf(this, SystemClock.uptimeMillis() + 20);
        }
    }

    private int b() {
        return (int) ((20.0f / ((float) this.c)) * 360.0f);
    }
}
