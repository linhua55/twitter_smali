package com.twitter.android.profiles.animation;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;

/* compiled from: Twttr */
class k implements AnimatorListener {
    final /* synthetic */ FlyThroughSetAnimationView a;

    k(FlyThroughSetAnimationView flyThroughSetAnimationView) {
        this.a = flyThroughSetAnimationView;
    }

    public void onAnimationStart(Animator animator) {
        FlyThroughSetAnimationView.a(this.a);
    }

    public void onAnimationEnd(Animator animator) {
        FlyThroughSetAnimationView.b(this.a);
    }

    public void onAnimationCancel(Animator animator) {
    }

    public void onAnimationRepeat(Animator animator) {
    }
}
