package com.twitter.android.media.widget;

import android.view.animation.Animation;
import com.twitter.util.ui.c;

/* compiled from: Twttr */
class m extends c {
    final /* synthetic */ CameraToolbar a;

    m(CameraToolbar cameraToolbar) {
        this.a = cameraToolbar;
    }

    public void onAnimationEnd(Animation animation) {
        this.a.setVisibility(8);
    }
}
