package com.twitter.ui.widget.touchintercept;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.FrameLayout;

/* compiled from: Twttr */
public class TouchInterceptingFrameLayout extends FrameLayout {
    private f a;

    public TouchInterceptingFrameLayout(Context context) {
        super(context);
    }

    public TouchInterceptingFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public TouchInterceptingFrameLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public void setTouchInterceptListener(f fVar) {
        this.a = fVar;
    }

    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean z;
        if (this.a == null || !this.a.b(this, motionEvent)) {
            z = false;
        } else {
            z = true;
        }
        if (z || super.onInterceptTouchEvent(motionEvent)) {
            return true;
        }
        return false;
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z;
        if (this.a == null || !this.a.a(this, motionEvent)) {
            z = false;
        } else {
            z = true;
        }
        if (z || super.onTouchEvent(motionEvent)) {
            return true;
        }
        return false;
    }
}
