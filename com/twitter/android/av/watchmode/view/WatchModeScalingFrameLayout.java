package com.twitter.android.av.watchmode.view;

import android.content.Context;
import android.content.res.Resources;
import android.support.annotation.VisibleForTesting;
import android.util.AttributeSet;
import android.view.View.MeasureSpec;
import android.widget.FrameLayout;
import com.google.android.exoplayer.C;
import com.twitter.android.av.video.a;
import com.twitter.media.ui.image.AspectRatioFrameLayout;
import com.twitter.util.math.Size;

/* compiled from: Twttr */
public class WatchModeScalingFrameLayout extends FrameLayout {
    @VisibleForTesting
    AspectRatioFrameLayout a;
    private float b;

    public WatchModeScalingFrameLayout(Context context) {
        super(context);
        this.b = 1.0f;
    }

    public WatchModeScalingFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.b = 1.0f;
    }

    public WatchModeScalingFrameLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.b = 1.0f;
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        this.a = (AspectRatioFrameLayout) findViewById(2131953391);
    }

    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        a a = a.a(this.a.getAspectRatio());
        Size b = Size.a(getMeasuredWidth(), getMeasuredHeight()).b(a.a());
        if (a(a, b, getResources())) {
            a(i2, b, getMeasuredWidth());
        }
    }

    @VisibleForTesting
    static boolean a(a aVar, Size size, Resources resources) {
        return (size.d() || (aVar.b() && (resources.getConfiguration().orientation == 1))) ? false : true;
    }

    @VisibleForTesting
    void a(int i, Size size, int i2) {
        this.a.measure(MeasureSpec.makeMeasureSpec(i2 - ((int) (((float) (i2 - (i2 > size.a() ? size.a() : i2))) * this.b)), C.ENCODING_PCM_32BIT), i);
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int measuredWidth = this.a.getMeasuredWidth();
        int i5 = i3 - i;
        if (i5 > measuredWidth) {
            measuredWidth = (i5 - measuredWidth) / 2;
            i += measuredWidth;
            i3 -= measuredWidth;
        }
        this.a.layout(i, i2, i3, i4);
    }

    public void setExpandedFraction(float f) {
        this.b = f;
        requestLayout();
    }
}
