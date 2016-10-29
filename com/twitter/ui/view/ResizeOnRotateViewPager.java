package com.twitter.ui.view;

import android.content.Context;
import android.util.AttributeSet;

/* compiled from: Twttr */
public class ResizeOnRotateViewPager extends LockableViewPager {
    public ResizeOnRotateViewPager(Context context) {
        super(context);
    }

    public ResizeOnRotateViewPager(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i - getPageMargin(), i2, i3 - getPageMargin(), i4);
    }
}
