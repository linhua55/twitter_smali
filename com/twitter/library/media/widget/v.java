package com.twitter.library.media.widget;

import android.animation.Animator;
import com.twitter.util.ui.d;

/* compiled from: Twttr */
class v extends d {
    final /* synthetic */ PromotedSlideshowMediaView a;

    v(PromotedSlideshowMediaView promotedSlideshowMediaView) {
        this.a = promotedSlideshowMediaView;
    }

    public void onAnimationEnd(Animator animator) {
        this.a.b(this.a.h);
    }
}
