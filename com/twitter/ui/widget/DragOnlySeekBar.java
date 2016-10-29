package com.twitter.ui.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import android.widget.SeekBar;
import tv.periscope.android.library.p;

/* compiled from: Twttr */
public class DragOnlySeekBar extends SeekBar {
    private final int a;
    private boolean b;
    private float c;

    public DragOnlySeekBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.a = ViewConfiguration.get(context).getScaledTouchSlop();
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        switch (motionEvent.getAction()) {
            case p.View_android_theme /*0*/:
                this.c = motionEvent.getX();
                return true;
            case p.View_android_focusable /*1*/:
                if (!this.b) {
                    return true;
                }
                this.b = false;
                this.c = 0.0f;
                return super.onTouchEvent(motionEvent);
            case p.View_paddingStart /*2*/:
                if (this.b) {
                    return super.onTouchEvent(motionEvent);
                }
                if (Math.abs(this.c - motionEvent.getX()) <= ((float) this.a)) {
                    return true;
                }
                this.b = true;
                return super.onTouchEvent(motionEvent);
            default:
                return true;
        }
    }
}
