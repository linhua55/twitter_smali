package com.twitter.android.widget;

import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;

/* compiled from: Twttr */
class au implements OnTouchListener {
    final /* synthetic */ GestureDetector a;
    final /* synthetic */ View b;
    final /* synthetic */ at c;

    au(at atVar, GestureDetector gestureDetector, View view) {
        this.c = atVar;
        this.a = gestureDetector;
        this.b = view;
    }

    public boolean onTouch(View view, MotionEvent motionEvent) {
        boolean onTouchEvent = this.a.onTouchEvent(motionEvent);
        if ((motionEvent.getAction() == 1 || motionEvent.getAction() == 3) && !onTouchEvent) {
            this.b.clearAnimation();
        }
        return onTouchEvent;
    }
}
