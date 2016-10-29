package com.twitter.moments.core.ui.widget.capsule;

import android.annotation.SuppressLint;
import android.content.Context;
import android.support.annotation.VisibleForTesting;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;

/* compiled from: Twttr */
public class WidthMatchFirstChildFrameLayout extends FrameLayout {
    public WidthMatchFirstChildFrameLayout(Context context) {
        super(context);
    }

    public WidthMatchFirstChildFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public WidthMatchFirstChildFrameLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    protected void onMeasure(int i, int i2) {
        View childAt = getChildAt(0);
        if (childAt != null) {
            measureChild(childAt, i, i2);
            i = MeasureSpec.makeMeasureSpec(a((LayoutParams) childAt.getLayoutParams()) + childAt.getMeasuredWidth(), 1073741824);
        }
        a(i, i2);
    }

    @VisibleForTesting
    protected int a(LayoutParams layoutParams) {
        return layoutParams.rightMargin + layoutParams.leftMargin;
    }

    @VisibleForTesting
    @SuppressLint({"WrongCall"})
    protected void a(int i, int i2) {
        super.onMeasure(i, i2);
    }
}
