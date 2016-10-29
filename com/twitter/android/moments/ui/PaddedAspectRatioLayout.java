package com.twitter.android.moments.ui;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View.MeasureSpec;
import com.google.android.exoplayer.C;
import com.twitter.android.mx;
import com.twitter.media.ui.image.AspectRatioFrameLayout;

/* compiled from: Twttr */
public class PaddedAspectRatioLayout extends AspectRatioFrameLayout {
    private final int a;

    public PaddedAspectRatioLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, mx.PaddedAspectRatioLayout, 0, 0);
        this.a = obtainStyledAttributes.getDimensionPixelSize(0, 0);
        obtainStyledAttributes.recycle();
    }

    protected void onMeasure(int i, int i2) {
        setScaleMode(0);
        super.onMeasure(i, i2);
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight() + this.a;
        setScaleMode(1);
        super.onMeasure(MeasureSpec.makeMeasureSpec(measuredWidth, C.ENCODING_PCM_32BIT), MeasureSpec.makeMeasureSpec(measuredHeight, C.ENCODING_PCM_32BIT));
    }
}
