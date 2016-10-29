package com.twitter.android.media.camera;

import android.view.animation.Animation;
import com.twitter.util.ui.c;

/* compiled from: Twttr */
class an extends c {
    final /* synthetic */ ah a;

    an(ah ahVar) {
        this.a = ahVar;
    }

    public void onAnimationStart(Animation animation) {
        this.a.s.setVisibility(0);
    }
}
