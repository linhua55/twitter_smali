package com.twitter.android.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View.MeasureSpec;
import android.widget.FrameLayout;

/* compiled from: Twttr */
public class UnboundedFrameLayout extends FrameLayout {
    private gb a;

    public UnboundedFrameLayout(Context context) {
        super(context);
    }

    public UnboundedFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, MeasureSpec.makeMeasureSpec(MeasureSpec.getSize(i2), 0));
    }

    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (i != 0 && i2 != 0 && this.a != null) {
            this.a.e();
        }
    }

    public void setOnHeaderSizeChangedListener(gb gbVar) {
        this.a = gbVar;
    }
}
