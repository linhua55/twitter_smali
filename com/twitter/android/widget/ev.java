package com.twitter.android.widget;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;

/* compiled from: Twttr */
public class ev extends Drawable {
    private int a;
    private BitmapDrawable[] b;

    public ev(BitmapDrawable[] bitmapDrawableArr) {
        this.b = bitmapDrawableArr;
    }

    public void a(BitmapDrawable[] bitmapDrawableArr) {
        this.b = bitmapDrawableArr;
    }

    public BitmapDrawable[] a() {
        return this.b;
    }

    public void a(int i) {
        this.a = i;
        invalidateSelf();
    }

    public void draw(Canvas canvas) {
        if (this.b != null) {
            this.b[this.a].draw(canvas);
        }
    }

    protected void onBoundsChange(Rect rect) {
        for (Drawable bounds : this.b) {
            bounds.setBounds(rect);
        }
    }

    public void setAlpha(int i) {
        for (Drawable alpha : this.b) {
            alpha.setAlpha(i);
        }
    }

    public void setColorFilter(ColorFilter colorFilter) {
        for (Drawable colorFilter2 : this.b) {
            colorFilter2.setColorFilter(colorFilter);
        }
    }

    public int getOpacity() {
        return -3;
    }
}
