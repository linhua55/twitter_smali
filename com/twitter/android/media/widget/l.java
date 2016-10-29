package com.twitter.android.media.widget;

import android.view.animation.Animation;
import com.twitter.util.ui.c;

/* compiled from: Twttr */
class l extends c {
    final /* synthetic */ CameraToolbar a;

    l(CameraToolbar cameraToolbar) {
        this.a = cameraToolbar;
    }

    public void onAnimationStart(Animation animation) {
        this.a.setVisibility(0);
    }
}
