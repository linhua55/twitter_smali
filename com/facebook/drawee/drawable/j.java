package com.facebook.drawee.drawable;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.graphics.Path.Direction;
import android.graphics.Path.FillType;
import android.graphics.RectF;
import android.graphics.Shader.TileMode;
import android.graphics.drawable.BitmapDrawable;
import bx;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import javax.annotation.Nullable;

/* compiled from: Twttr */
public class j extends BitmapDrawable implements i, p {
    boolean a;
    float[] b;
    RectF c;
    final RectF d;
    final Matrix e;
    final Matrix f;
    final Matrix g;
    float h;
    int i;
    boolean j;
    private final Path k;
    private boolean l;
    private final Paint m;
    private final Paint n;
    private boolean o;
    private WeakReference<Bitmap> p;
    @Nullable
    private q q;

    public j(Resources resources, Bitmap bitmap) {
        super(resources, bitmap);
        this.a = false;
        this.b = new float[8];
        this.c = new RectF();
        this.d = new RectF();
        this.e = new Matrix();
        this.f = new Matrix();
        this.g = new Matrix();
        this.h = 0.0f;
        this.i = 0;
        this.j = true;
        this.k = new Path();
        this.l = true;
        this.m = new Paint(1);
        this.n = new Paint(1);
        this.o = true;
        this.n.setStyle(Style.STROKE);
    }

    public static j a(Resources resources, BitmapDrawable bitmapDrawable) {
        return new j(resources, bitmapDrawable.getBitmap());
    }

    public void a(boolean z) {
        this.a = z;
        this.l = true;
        invalidateSelf();
    }

    public void a(float f) {
        bx.b(f >= 0.0f);
        Arrays.fill(this.b, f);
        this.l = true;
        invalidateSelf();
    }

    public void a(float[] fArr) {
        if (fArr == null) {
            Arrays.fill(this.b, 0.0f);
        } else {
            boolean z;
            if (fArr.length == 8) {
                z = true;
            } else {
                z = false;
            }
            bx.a(z, "radii should have exactly 8 values");
            System.arraycopy(fArr, 0, this.b, 0, 8);
        }
        this.l = true;
        invalidateSelf();
    }

    public void a(int i, float f) {
        if (this.i != i || this.h != f) {
            this.i = i;
            this.h = f;
            this.l = true;
            invalidateSelf();
        }
    }

    public void a(@Nullable q qVar) {
        this.q = qVar;
    }

    public void setAlpha(int i) {
        if (i != this.m.getAlpha()) {
            this.m.setAlpha(i);
            invalidateSelf();
        }
    }

    public void setColorFilter(ColorFilter colorFilter) {
        this.m.setColorFilter(colorFilter);
        invalidateSelf();
    }

    public void draw(Canvas canvas) {
        b();
        a();
        if (this.j) {
            c();
            d();
            int save = canvas.save();
            canvas.concat(this.f);
            canvas.drawPath(this.k, this.m);
            if (this.h != 0.0f) {
                this.n.setStrokeWidth(this.h);
                this.n.setColor(d.a(this.i, this.m.getAlpha()));
                canvas.drawPath(this.k, this.n);
            }
            canvas.restoreToCount(save);
            return;
        }
        super.draw(canvas);
    }

    private void a() {
        int i = 0;
        if (this.l) {
            this.j = false;
            if (this.a || this.h > 0.0f) {
                this.j = true;
            }
            while (i < this.b.length) {
                if (this.b[i] > 0.0f) {
                    this.j = true;
                }
                i++;
            }
        }
    }

    private void b() {
        if (this.q != null) {
            this.q.a(this.e);
            this.q.a(this.c);
        } else {
            this.e.reset();
            this.c.set(getBounds());
        }
        if (!this.e.equals(this.g)) {
            this.o = true;
            if (!this.e.invert(this.f)) {
                this.f.reset();
                this.e.reset();
            }
            this.g.set(this.e);
        }
        if (!this.c.equals(this.d)) {
            this.l = true;
            this.d.set(this.c);
        }
    }

    private void c() {
        if (this.l) {
            this.k.reset();
            this.c.inset(this.h / 2.0f, this.h / 2.0f);
            if (this.a) {
                this.k.addCircle(this.c.centerX(), this.c.centerY(), Math.min(this.c.width(), this.c.height()) / 2.0f, Direction.CW);
            } else {
                this.k.addRoundRect(this.c, this.b, Direction.CW);
            }
            this.c.inset(-(this.h / 2.0f), -(this.h / 2.0f));
            this.k.setFillType(FillType.WINDING);
            this.l = false;
        }
    }

    private void d() {
        Bitmap bitmap = getBitmap();
        if (this.p == null || this.p.get() != bitmap) {
            this.p = new WeakReference(bitmap);
            this.m.setShader(new BitmapShader(bitmap, TileMode.CLAMP, TileMode.CLAMP));
            this.o = true;
        }
        if (this.o) {
            this.m.getShader().setLocalMatrix(this.e);
            this.o = false;
        }
    }
}
