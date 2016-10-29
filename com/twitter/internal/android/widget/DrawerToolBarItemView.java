package com.twitter.internal.android.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.support.v4.graphics.drawable.RoundedBitmapDrawable;
import android.support.v4.graphics.drawable.RoundedBitmapDrawableFactory;
import android.util.AttributeSet;
import defpackage.bct;
import defpackage.bdd;
import defpackage.bde;

/* compiled from: Twttr */
public class DrawerToolBarItemView extends ToolBarItemView {
    private final Drawable c;
    private final Paint d;
    private final float e;
    private final int f;
    private final float g;
    private final float h;
    private boolean i;

    public DrawerToolBarItemView(Context context) {
        this(context, null);
    }

    public DrawerToolBarItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, bct.toolBarDrawerItemStyle);
    }

    public DrawerToolBarItemView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.d = new Paint(1);
        this.i = false;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, bdd.ToolBarItem, i, 0);
        this.c = bde.a(obtainStyledAttributes.getDrawable(bdd.ToolBarItem_android_icon), bde.a(context));
        a(this.c, true);
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(bdd.ToolBarItem_maxIconSize, -1);
        if (dimensionPixelSize > -1) {
            setMaxIconSize(dimensionPixelSize);
        }
        dimensionPixelSize = obtainStyledAttributes.getColor(bdd.ToolBarItem_strokeColor, 0);
        this.e = (((float) obtainStyledAttributes.getInt(bdd.ToolBarItem_strokeAlpha, 100)) / 100.0f) * 255.0f;
        this.f = obtainStyledAttributes.getDimensionPixelOffset(bdd.ToolBarItem_strokeWidth, 0);
        this.d.setAlpha((int) this.e);
        this.d.setColor(dimensionPixelSize);
        this.d.setStrokeWidth((float) this.f);
        this.d.setStyle(Style.STROKE);
        float[] fArr = new float[3];
        Color.colorToHSV(obtainStyledAttributes.getColor(bdd.ToolBarItem_checkIconAgainstColor, 0), fArr);
        this.g = fArr[1];
        this.h = fArr[2];
        obtainStyledAttributes.recycle();
    }

    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.i) {
            Rect bounds = this.a.getBounds();
            int i = this.b / 2;
            canvas.drawCircle((float) (bounds.left + (bounds.width() / 2)), (float) ((bounds.height() / 2) + bounds.top), (float) (i - (this.f / 2)), this.d);
        }
    }

    public void setImageBitmap(Bitmap bitmap) {
        Drawable drawable;
        if (bitmap == null) {
            drawable = this.c;
        } else {
            drawable = RoundedBitmapDrawableFactory.create(getContext().getResources(), bitmap);
        }
        this.i = false;
        if (!(drawable == null || drawable == this.c)) {
            int i;
            float f;
            float f2;
            ((RoundedBitmapDrawable) drawable).setCircular(true);
            if (bitmap.getWidth() >= this.b || bitmap.getHeight() >= this.b) {
                boolean z;
                int width = bitmap.getWidth() - 1;
                int height = bitmap.getHeight() - 1;
                double d = (double) (width / 2);
                double d2 = (double) (height / 2);
                float[] fArr = new float[3];
                i = 2;
                int i2 = 0;
                f = 0.0f;
                float f3 = 0.0f;
                for (int i3 = 0; i3 < 8; i3++) {
                    double d3 = ((double) i3) * 0.7853981633974483d;
                    Color.colorToHSV(bitmap.getPixel(Math.min((int) (Math.floor(Math.cos(d3) * d) + d), width), Math.min((int) (Math.floor(Math.sin(d3) * d) + d2), height)), fArr);
                    if (a(fArr)) {
                        f3 += fArr[1];
                        f += fArr[2];
                        i2++;
                    } else {
                        i--;
                    }
                    if (i == 0) {
                        break;
                    }
                }
                if (i > 0) {
                    z = true;
                } else {
                    z = false;
                }
                this.i = z;
                i = i2;
                f2 = f;
                f = f3;
            } else {
                f = this.g * 8.0f;
                f2 = 8.0f * this.h;
                i = 8;
                this.i = true;
            }
            if (this.i) {
                float f4 = f2 / ((float) i);
                this.d.setAlpha((int) ((1.0f - ((((this.h - f4) / 0.1f) + (((f / ((float) i)) - this.g) / 0.1f)) / 1.0f)) * this.e));
            }
        }
        super.a(drawable, false);
    }

    private boolean a(float[] fArr) {
        float f = fArr[1];
        float f2 = fArr[2];
        if (f < this.g || f >= this.g + 0.1f || f2 <= this.h - 0.1f || f2 > this.h) {
            return false;
        }
        return true;
    }
}
