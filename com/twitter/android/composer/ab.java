package com.twitter.android.composer;

import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.widget.FrameLayout;

/* compiled from: Twttr */
class ab implements OnTouchListener {
    final /* synthetic */ GestureDetector a;
    final /* synthetic */ FrameLayout b;
    final /* synthetic */ ComposerActivity c;

    ab(ComposerActivity composerActivity, GestureDetector gestureDetector, FrameLayout frameLayout) {
        this.c = composerActivity;
        this.a = gestureDetector;
        this.b = frameLayout;
    }

    public boolean onTouch(View view, MotionEvent motionEvent) {
        if (!view.isClickable()) {
            return false;
        }
        boolean onTouchEvent = this.a.onTouchEvent(motionEvent);
        if ((motionEvent.getAction() != 1 && motionEvent.getAction() != 3) || onTouchEvent) {
            return onTouchEvent;
        }
        this.b.clearAnimation();
        return onTouchEvent;
    }
}
