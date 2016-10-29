package com.twitter.android.media.camera;

import android.view.MotionEvent;
import android.view.View;
import com.twitter.android.media.widget.h;

/* compiled from: Twttr */
class e implements h {
    final /* synthetic */ CameraFragment a;

    e(CameraFragment cameraFragment) {
        this.a = cameraFragment;
    }

    public boolean a(View view, MotionEvent motionEvent) {
        return CameraFragment.a(this.a) != null && CameraFragment.a(this.a).a(view, motionEvent);
    }
}
