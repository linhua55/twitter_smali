package com.twitter.android.media.camera;

import android.support.v4.view.MotionEventCompat;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;

/* compiled from: Twttr */
class g implements OnTouchListener {
    final /* synthetic */ CameraFragment a;

    g(CameraFragment cameraFragment) {
        this.a = cameraFragment;
    }

    public boolean onTouch(View view, MotionEvent motionEvent) {
        if (MotionEventCompat.getActionMasked(motionEvent) == 1) {
            this.a.a((int) motionEvent.getX(), (int) motionEvent.getY());
        }
        return true;
    }
}
