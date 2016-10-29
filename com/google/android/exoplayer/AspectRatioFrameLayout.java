package com.google.android.exoplayer;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View.MeasureSpec;
import android.widget.FrameLayout;

/* compiled from: Twttr */
public final class AspectRatioFrameLayout extends FrameLayout {
    private static final float MAX_ASPECT_RATIO_DEFORMATION_FRACTION = 0.01f;
    private float videoAspectRatio;

    public AspectRatioFrameLayout(Context context) {
        super(context);
    }

    public AspectRatioFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public void setAspectRatio(float f) {
        if (this.videoAspectRatio != f) {
            this.videoAspectRatio = f;
            requestLayout();
        }
    }

    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.videoAspectRatio != 0.0f) {
            int measuredWidth = getMeasuredWidth();
            int measuredHeight = getMeasuredHeight();
            float f = (this.videoAspectRatio / (((float) measuredWidth) / ((float) measuredHeight))) - 1.0f;
            if (Math.abs(f) > MAX_ASPECT_RATIO_DEFORMATION_FRACTION) {
                if (f > 0.0f) {
                    measuredHeight = (int) (((float) measuredWidth) / this.videoAspectRatio);
                } else {
                    measuredWidth = (int) (((float) measuredHeight) * this.videoAspectRatio);
                }
                super.onMeasure(MeasureSpec.makeMeasureSpec(measuredWidth, C.ENCODING_PCM_32BIT), MeasureSpec.makeMeasureSpec(measuredHeight, C.ENCODING_PCM_32BIT));
            }
        }
    }
}
