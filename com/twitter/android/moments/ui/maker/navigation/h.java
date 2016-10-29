package com.twitter.android.moments.ui.maker.navigation;

import android.animation.Animator;
import com.twitter.util.ui.d;

/* compiled from: Twttr */
class h extends d {
    final /* synthetic */ f a;

    h(f fVar) {
        this.a = fVar;
    }

    public void onAnimationStart(Animator animator) {
        this.a.a.setVisibility(0);
        this.a.a.setAlpha(0.0f);
    }

    public void onAnimationEnd(Animator animator) {
        this.a.b.b_(null);
        this.a.b.bs_();
    }
}
