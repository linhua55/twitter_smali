package com.twitter.android.profiles.animation;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.widget.ImageView;

/* compiled from: Twttr */
class o implements AnimatorListener {
    final /* synthetic */ ImageView a;
    final /* synthetic */ long b;
    final /* synthetic */ FlyThroughSetAnimationView c;

    o(FlyThroughSetAnimationView flyThroughSetAnimationView, ImageView imageView, long j) {
        this.c = flyThroughSetAnimationView;
        this.a = imageView;
        this.b = j;
    }

    public void onAnimationStart(Animator animator) {
    }

    public void onAnimationEnd(Animator animator) {
        this.a.setOnClickListener(new p(this));
    }

    public void onAnimationCancel(Animator animator) {
        this.c.removeView(this.a);
    }

    public void onAnimationRepeat(Animator animator) {
    }
}
