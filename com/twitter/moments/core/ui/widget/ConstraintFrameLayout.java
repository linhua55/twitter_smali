package com.twitter.moments.core.ui.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View.MeasureSpec;
import android.widget.FrameLayout;

/* compiled from: Twttr */
public class ConstraintFrameLayout extends FrameLayout {
    private Rect a;

    public ConstraintFrameLayout(Context context) {
        super(context);
    }

    public ConstraintFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public ConstraintFrameLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    protected void onMeasure(int i, int i2) {
        if (this.a == null) {
            super.onMeasure(i, i2);
            return;
        }
        int childCount = getChildCount();
        for (int i3 = 0; i3 < childCount; i3++) {
            getChildAt(i3).measure(MeasureSpec.makeMeasureSpec(this.a.width(), 1073741824), MeasureSpec.makeMeasureSpec(this.a.height(), 1073741824));
        }
        setMeasuredDimension(MeasureSpec.getSize(i), MeasureSpec.getSize(i2));
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        if (this.a == null) {
            super.onLayout(z, i, i2, i3, i4);
            return;
        }
        int childCount = getChildCount();
        for (int i5 = 0; i5 < childCount; i5++) {
            getChildAt(i5).layout(this.a.left, this.a.top, this.a.right, this.a.bottom);
        }
    }

    public void setConstraintRect(Rect rect) {
        this.a = rect;
    }

    public Rect getConstraint() {
        return this.a;
    }
}
