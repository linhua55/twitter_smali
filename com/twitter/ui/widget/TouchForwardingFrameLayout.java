package com.twitter.ui.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.twitter.util.h;
import defpackage.cse;

/* compiled from: Twttr */
public class TouchForwardingFrameLayout extends FrameLayout {
    private final int a;
    private final int[] b;
    private ViewGroup c;

    public TouchForwardingFrameLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TouchForwardingFrameLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.b = new int[2];
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, cse.TouchForwardingFrameLayout, i, 0);
        this.a = obtainStyledAttributes.getResourceId(cse.TouchForwardingFrameLayout_targetViewGroup, 0);
        obtainStyledAttributes.recycle();
    }

    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.c = (ViewGroup) getRootView().findViewById(this.a);
    }

    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (this.c == null) {
            return false;
        }
        a(this.c, motionEvent);
        if (this.c.onInterceptTouchEvent(motionEvent)) {
            return true;
        }
        a(this, motionEvent);
        return false;
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.c == null) {
            return false;
        }
        a(this.c, motionEvent);
        if (this.c.dispatchTouchEvent(motionEvent)) {
            return true;
        }
        a(this, motionEvent);
        return false;
    }

    public void setOnClickListener(OnClickListener onClickListener) {
        h.a("Click listeners are not supported by TouchForwardingFrameLayout since it forwards all touch events to the target ViewGroup");
    }

    private void a(ViewGroup viewGroup, MotionEvent motionEvent) {
        viewGroup.getLocationOnScreen(this.b);
        motionEvent.setLocation(motionEvent.getRawX() - ((float) this.b[0]), motionEvent.getRawY() - ((float) this.b[1]));
    }
}
