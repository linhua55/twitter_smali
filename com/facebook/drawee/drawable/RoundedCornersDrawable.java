package com.facebook.drawee.drawable;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.graphics.Path.Direction;
import android.graphics.Path.FillType;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import defpackage.bx;
import java.util.Arrays;

/* compiled from: Twttr */
public class RoundedCornersDrawable extends f implements i {
    Type a;
    final float[] c;
    final Paint d;
    boolean e;
    float f;
    int g;
    int h;
    private final Path i;
    private final RectF j;

    /* compiled from: Twttr */
    public enum Type {
        OVERLAY_COLOR,
        CLIPPING
    }

    public RoundedCornersDrawable(Drawable drawable) {
        super((Drawable) bx.a((Object) drawable));
        this.a = Type.OVERLAY_COLOR;
        this.c = new float[8];
        this.d = new Paint(1);
        this.e = false;
        this.f = 0.0f;
        this.g = 0;
        this.h = 0;
        this.i = new Path();
        this.j = new RectF();
    }

    public void a(boolean z) {
        this.e = z;
        a();
        invalidateSelf();
    }

    public void a(float f) {
        Arrays.fill(this.c, f);
        a();
        invalidateSelf();
    }

    public void a(float[] fArr) {
        if (fArr == null) {
            Arrays.fill(this.c, 0.0f);
        } else {
            boolean z;
            if (fArr.length == 8) {
                z = true;
            } else {
                z = false;
            }
            bx.a(z, (Object) "radii should have exactly 8 values");
            System.arraycopy(fArr, 0, this.c, 0, 8);
        }
        a();
        invalidateSelf();
    }

    public void a(int i) {
        this.h = i;
        invalidateSelf();
    }

    public void a(int i, float f) {
        this.g = i;
        this.f = f;
        a();
        invalidateSelf();
    }

    protected void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        a();
    }

    private void a() {
        this.i.reset();
        this.j.set(getBounds());
        this.j.inset(this.f / 2.0f, this.f / 2.0f);
        if (this.e) {
            this.i.addCircle(this.j.centerX(), this.j.centerY(), Math.min(this.j.width(), this.j.height()) / 2.0f, Direction.CW);
        } else {
            this.i.addRoundRect(this.j, this.c, Direction.CW);
        }
        this.j.inset((-this.f) / 2.0f, (-this.f) / 2.0f);
    }

    public void draw(Canvas canvas) {
        Rect bounds = getBounds();
        switch (l.a[this.a.ordinal()]) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                int save = canvas.save();
                this.i.setFillType(FillType.EVEN_ODD);
                canvas.clipPath(this.i);
                super.draw(canvas);
                canvas.restoreToCount(save);
                break;
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                super.draw(canvas);
                this.d.setColor(this.h);
                this.d.setStyle(Style.FILL);
                this.i.setFillType(FillType.INVERSE_EVEN_ODD);
                canvas.drawPath(this.i, this.d);
                if (this.e) {
                    float width = (((float) (bounds.width() - bounds.height())) + this.f) / 2.0f;
                    float height = (((float) (bounds.height() - bounds.width())) + this.f) / 2.0f;
                    if (width > 0.0f) {
                        canvas.drawRect((float) bounds.left, (float) bounds.top, ((float) bounds.left) + width, (float) bounds.bottom, this.d);
                        canvas.drawRect(((float) bounds.right) - width, (float) bounds.top, (float) bounds.right, (float) bounds.bottom, this.d);
                    }
                    if (height > 0.0f) {
                        canvas.drawRect((float) bounds.left, (float) bounds.top, (float) bounds.right, ((float) bounds.top) + height, this.d);
                        canvas.drawRect((float) bounds.left, ((float) bounds.bottom) - height, (float) bounds.right, (float) bounds.bottom, this.d);
                        break;
                    }
                }
                break;
        }
        if (this.g != 0) {
            this.d.setStyle(Style.STROKE);
            this.d.setColor(this.g);
            this.d.setStrokeWidth(this.f);
            this.i.setFillType(FillType.EVEN_ODD);
            canvas.drawPath(this.i, this.d);
        }
    }
}
