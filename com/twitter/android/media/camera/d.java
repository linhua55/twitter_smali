package com.twitter.android.media.camera;

import android.view.animation.Animation;
import com.twitter.util.ui.c;

/* compiled from: Twttr */
class d extends c {
    final /* synthetic */ CameraFragment a;

    d(CameraFragment cameraFragment) {
        this.a = cameraFragment;
    }

    public void onAnimationEnd(Animation animation) {
        this.a.g.setVisibility(8);
    }
}
