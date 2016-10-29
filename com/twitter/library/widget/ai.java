package com.twitter.library.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.support.annotation.DrawableRes;

/* compiled from: Twttr */
public class ai extends LayerDrawable {
    private final boolean[] a;

    public ai(Drawable[] drawableArr) {
        super(drawableArr);
        this.a = new boolean[drawableArr.length];
    }

    public ai(LayerDrawable layerDrawable) {
        this(a(layerDrawable));
        int numberOfLayers = layerDrawable.getNumberOfLayers();
        for (int i = 0; i < numberOfLayers; i++) {
            setId(i, layerDrawable.getId(i));
        }
    }

    public ai(Context context, @DrawableRes int i) {
        this((LayerDrawable) context.getResources().getDrawable(i));
    }

    public void draw(Canvas canvas) {
        int numberOfLayers = getNumberOfLayers();
        boolean[] zArr = this.a;
        for (int i = 0; i < numberOfLayers; i++) {
            if (!zArr[i]) {
                getDrawable(i).draw(canvas);
            }
        }
    }

    protected void onBoundsChange(Rect rect) {
        int numberOfLayers = getNumberOfLayers();
        for (int i = 0; i < numberOfLayers; i++) {
            getDrawable(i).setBounds(rect);
        }
    }

    public void a(int i, boolean z) {
        boolean z2 = !z;
        if (this.a[i] != z2) {
            this.a[i] = z2;
            invalidateSelf();
        }
    }

    public void a(int i, int i2) {
        getDrawable(i).setAlpha(i2);
        invalidateSelf();
    }

    private static Drawable[] a(LayerDrawable layerDrawable) {
        int numberOfLayers = layerDrawable.getNumberOfLayers();
        Drawable[] drawableArr = new Drawable[numberOfLayers];
        for (int i = 0; i < numberOfLayers; i++) {
            drawableArr[i] = layerDrawable.getDrawable(i);
        }
        return drawableArr;
    }
}
