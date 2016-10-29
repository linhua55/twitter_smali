package com.twitter.library.media.widget;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import java.util.List;

/* compiled from: Twttr */
public class w extends Drawable {
    private final Paint a;
    private final List<x> b;
    private final BitmapDrawable c;
    private final float d;

    public w(Resources resources, List<x> list, Bitmap bitmap, float f) {
        this.a = new Paint(1);
        this.b = list;
        this.c = bitmap == null ? null : new BitmapDrawable(resources, bitmap);
        this.d = f;
    }

    public void draw(Canvas canvas) {
        if (this.c != null) {
            this.c.draw(canvas);
        }
        for (x xVar : this.b) {
            canvas.drawBitmap(xVar.a, xVar.c, this.a);
        }
    }

    public void setAlpha(int i) {
        if (this.c != null) {
            this.c.setAlpha(i);
        }
        this.a.setAlpha(i);
    }

    public void setColorFilter(ColorFilter colorFilter) {
        if (this.c != null) {
            this.c.setColorFilter(colorFilter);
        }
        this.a.setColorFilter(colorFilter);
    }

    public int getOpacity() {
        return this.c != null ? this.c.getOpacity() : -3;
    }

    public int getIntrinsicWidth() {
        return this.c != null ? this.c.getIntrinsicWidth() : -1;
    }

    public int getIntrinsicHeight() {
        return this.c != null ? this.c.getIntrinsicHeight() : -1;
    }

    protected void onBoundsChange(Rect rect) {
        int i;
        int i2;
        int i3;
        if (this.c != null) {
            int round;
            this.c.setBounds(rect);
            float intrinsicWidth = ((float) this.c.getIntrinsicWidth()) / ((float) this.c.getIntrinsicHeight());
            if (intrinsicWidth >= this.d) {
                i = 0;
                round = Math.round((((intrinsicWidth / this.d) - 1.0f) * ((float) rect.height())) / 2.0f);
            } else {
                i = Math.round((((this.d / intrinsicWidth) - 1.0f) * ((float) rect.width())) / 2.0f);
                round = 0;
            }
            i2 = round;
            i3 = i;
        } else {
            i2 = 0;
            i3 = 0;
        }
        float width = (float) rect.width();
        for (x xVar : this.b) {
            Bitmap bitmap = xVar.a;
            float height = (((float) bitmap.getHeight()) * 0.5f) / ((float) bitmap.getWidth());
            float[] fArr = new float[]{-0.5f, -height, 0.5f, -height, 0.5f, height};
            xVar.b.mapPoints(fArr);
            for (i = 0; i < 6; i++) {
                fArr[i] = fArr[i] * width;
            }
            if (i3 != 0) {
                fArr[0] = fArr[0] - ((float) i3);
                fArr[2] = fArr[2] - ((float) i3);
                fArr[4] = fArr[4] - ((float) i3);
            }
            if (i2 != 0) {
                fArr[1] = fArr[1] - ((float) i2);
                fArr[3] = fArr[3] - ((float) i2);
                fArr[5] = fArr[5] - ((float) i2);
            }
            bitmap = xVar.a;
            int width2 = bitmap.getWidth();
            int height2 = bitmap.getHeight();
            xVar.c.setPolyToPoly(new float[]{0.0f, 0.0f, (float) width2, 0.0f, (float) width2, (float) height2}, 0, fArr, 0, 3);
        }
    }
}
