package com.twitter.android.moments.ui.maker.navigation;

import android.animation.Animator;
import com.twitter.util.ui.d;

/* compiled from: Twttr */
class g extends d {
    final /* synthetic */ f a;

    g(f fVar) {
        this.a = fVar;
    }

    public void onAnimationStart(Animator animator) {
        this.a.c.setAlpha(1.0f);
    }

    public void onAnimationEnd(Animator animator) {
        this.a.c.setVisibility(8);
    }
}
