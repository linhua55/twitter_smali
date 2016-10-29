package com.twitter.ui.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.support.annotation.IdRes;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import defpackage.cse;

/* compiled from: Twttr */
public class ProgressLayout extends FrameLayout {
    private LayerDrawable a;
    private int b;

    public ProgressLayout(Context context) {
        this(context, null);
    }

    public ProgressLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ProgressLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.b = 10000;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, cse.ProgressLayout, i, 0);
        this.b = obtainStyledAttributes.getInt(cse.ProgressLayout_android_max, this.b);
        obtainStyledAttributes.recycle();
    }

    public void setBackgroundDrawable(Drawable drawable) {
        if (this.a != drawable) {
            if (drawable instanceof LayerDrawable) {
                super.setBackgroundDrawable(drawable);
                LayerDrawable layerDrawable = this.a;
                this.a = (LayerDrawable) drawable;
                if (layerDrawable != null) {
                    a(layerDrawable);
                    return;
                }
                return;
            }
            throw new IllegalArgumentException("The background must be LayerDrawable, so it could be used as progress");
        }
    }

    private void a(LayerDrawable layerDrawable) {
        int numberOfLayers = layerDrawable.getNumberOfLayers();
        for (int i = 0; i < numberOfLayers; i++) {
            a(b(layerDrawable.getDrawable(i).getLevel()), layerDrawable.getId(i));
        }
    }

    public int getMax() {
        return this.b;
    }

    public void setMax(int i) {
        if (i <= 0) {
            i = 0;
        }
        this.b = i;
    }

    public void setProgress(int i) {
        a(i, 16908301);
    }

    public void a(int i, @IdRes int i2) {
        Drawable findDrawableByLayerId = this.a.findDrawableByLayerId(i2);
        if (findDrawableByLayerId != null) {
            findDrawableByLayerId.setLevel(this.b > 0 ? (Math.min(i, this.b) * 10000) / this.b : 0);
        }
    }

    public int getProgress() {
        return a(16908301);
    }

    public int a(@IdRes int i) {
        Drawable findDrawableByLayerId = this.a.findDrawableByLayerId(i);
        if (findDrawableByLayerId == null) {
            return 0;
        }
        return b(findDrawableByLayerId.getLevel());
    }

    private int b(int i) {
        return (this.b * i) / 10000;
    }
}
