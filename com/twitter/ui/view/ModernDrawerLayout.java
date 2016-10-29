package com.twitter.ui.view;

import android.content.Context;
import android.support.v4.widget.DrawerLayout;
import android.util.AttributeSet;
import android.view.MotionEvent;

/* compiled from: Twttr */
public class ModernDrawerLayout extends DrawerLayout {
    private boolean a;

    public ModernDrawerLayout(Context context) {
        super(context);
    }

    public ModernDrawerLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public ModernDrawerLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public void requestDisallowInterceptTouchEvent(boolean z) {
        this.a = z;
        super.requestDisallowInterceptTouchEvent(z);
    }

    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getPointerCount() <= 1 || !this.a) {
            return super.dispatchTouchEvent(motionEvent);
        }
        requestDisallowInterceptTouchEvent(false);
        boolean dispatchTouchEvent = super.dispatchTouchEvent(motionEvent);
        requestDisallowInterceptTouchEvent(true);
        return dispatchTouchEvent;
    }
}
