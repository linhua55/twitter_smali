package com.twitter.android.media.camera;

import android.view.animation.Animation;
import com.twitter.util.ui.c;

/* compiled from: Twttr */
class ak extends c {
    final /* synthetic */ ah a;

    ak(ah ahVar) {
        this.a = ahVar;
    }

    public void onAnimationEnd(Animation animation) {
        this.a.p.setVisibility(8);
    }
}
