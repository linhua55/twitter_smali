package com.twitter.android.profiles.animation;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.view.View;

/* compiled from: Twttr */
class m implements AnimatorListener {
    final /* synthetic */ View a;
    final /* synthetic */ FlyThroughSetAnimationView b;

    m(FlyThroughSetAnimationView flyThroughSetAnimationView, View view) {
        this.b = flyThroughSetAnimationView;
        this.a = view;
    }

    public void onAnimationStart(Animator animator) {
    }

    public void onAnimationEnd(Animator animator) {
        this.b.removeView(this.a);
    }

    public void onAnimationCancel(Animator animator) {
        this.b.removeView(this.a);
    }

    public void onAnimationRepeat(Animator animator) {
    }
}
