package com.twitter.android.media.camera;

import android.view.animation.Animation;
import com.twitter.util.ui.c;

/* compiled from: Twttr */
class ao extends c {
    final /* synthetic */ ah a;

    ao(ah ahVar) {
        this.a = ahVar;
    }

    public void onAnimationEnd(Animation animation) {
        this.a.s.setVisibility(8);
    }
}
