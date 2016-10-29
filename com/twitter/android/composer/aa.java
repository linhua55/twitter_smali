package com.twitter.android.composer;

import android.view.GestureDetector.SimpleOnGestureListener;
import android.view.MotionEvent;
import android.view.animation.Animation;
import android.widget.FrameLayout;

/* compiled from: Twttr */
class aa extends SimpleOnGestureListener {
    final /* synthetic */ FrameLayout a;
    final /* synthetic */ Animation b;
    final /* synthetic */ Animation c;
    final /* synthetic */ ComposerActivity d;

    aa(ComposerActivity composerActivity, FrameLayout frameLayout, Animation animation, Animation animation2) {
        this.d = composerActivity;
        this.a = frameLayout;
        this.b = animation;
        this.c = animation2;
    }

    public boolean onDown(MotionEvent motionEvent) {
        return true;
    }

    public void onShowPress(MotionEvent motionEvent) {
        this.a.startAnimation(this.b);
    }

    public boolean onSingleTapUp(MotionEvent motionEvent) {
        this.a.startAnimation(this.c);
        this.a.performClick();
        return true;
    }
}
