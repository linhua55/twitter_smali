package com.facebook.drawee.drawable;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.graphics.Path.Direction;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import com.google.android.exoplayer.util.NalUnitUtil;
import defpackage.bx;
import java.util.Arrays;

/* compiled from: Twttr */
public class k extends Drawable implements i {
    final float[] a;
    final Paint b;
    boolean c;
    float d;
    int e;
    final Path f;
    private int g;
    private final RectF h;
    private int i;

    public k(int i) {
        this.a = new float[8];
        this.b = new Paint(1);
        this.c = false;
        this.d = 0.0f;
        this.e = 0;
        this.f = new Path();
        this.g = 0;
        this.h = new RectF();
        this.i = NalUnitUtil.EXTENDED_SAR;
        a(i);
    }

    public static k a(ColorDrawable colorDrawable) {
        return new k(colorDrawable.getColor());
    }

    protected void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        a();
    }

    public void draw(Canvas canvas) {
        this.b.setColor(d.a(this.g, this.i));
        this.b.setStyle(Style.FILL);
        canvas.drawPath(this.f, this.b);
        if (this.d != 0.0f) {
            this.b.setColor(d.a(this.e, this.i));
            this.b.setStyle(Style.STROKE);
            this.b.setStrokeWidth(this.d);
            canvas.drawPath(this.f, this.b);
        }
    }

    public void a(boolean z) {
        this.c = z;
        a();
        invalidateSelf();
    }

    public void a(float[] fArr) {
        if (fArr == null) {
            Arrays.fill(this.a, 0.0f);
        } else {
            boolean z;
            if (fArr.length == 8) {
                z = true;
            } else {
                z = false;
            }
            bx.a(z, (Object) "radii should have exactly 8 values");
            System.arraycopy(fArr, 0, this.a, 0, 8);
        }
        a();
        invalidateSelf();
    }

    public void a(float f) {
        bx.a(f >= 0.0f, (Object) "radius should be non negative");
        Arrays.fill(this.a, f);
        a();
        invalidateSelf();
    }

    public void a(int i) {
        if (this.g != i) {
            this.g = i;
            invalidateSelf();
        }
    }

    public void a(int i, float f) {
        if (this.e != i) {
            this.e = i;
            invalidateSelf();
        }
        if (this.d != f) {
            this.d = f;
            a();
            invalidateSelf();
        }
    }

    public void setAlpha(int i) {
        if (i != this.i) {
            this.i = i;
            invalidateSelf();
        }
    }

    public int getAlpha() {
        return this.i;
    }

    public void setColorFilter(ColorFilter colorFilter) {
    }

    public int getOpacity() {
        return d.a(d.a(this.g, this.i));
    }

    private void a() {
        this.f.reset();
        this.h.set(getBounds());
        this.h.inset(this.d / 2.0f, this.d / 2.0f);
        if (this.c) {
            this.f.addCircle(this.h.centerX(), this.h.centerY(), Math.min(this.h.width(), this.h.height()) / 2.0f, Direction.CW);
        } else {
            this.f.addRoundRect(this.h, this.a, Direction.CW);
        }
        this.h.inset((-this.d) / 2.0f, (-this.d) / 2.0f);
    }
}
