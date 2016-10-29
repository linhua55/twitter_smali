package com.twitter.library.av.control;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.FrameLayout;

/* compiled from: Twttr */
public class SeekBarContainer extends FrameLayout {
    public SeekBarContainer(Context context) {
        super(context);
    }

    public SeekBarContainer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public SeekBarContainer(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        getParent().requestDisallowInterceptTouchEvent(true);
        return false;
    }
}
