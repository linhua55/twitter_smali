package com.twitter.media.ui;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;

/* compiled from: Twttr */
public class e implements AnimatorListener {
    final /* synthetic */ AnimatingProgressBar a;

    public e(AnimatingProgressBar animatingProgressBar) {
        this.a = animatingProgressBar;
    }

    public void onAnimationStart(Animator animator) {
    }

    public void onAnimationEnd(Animator animator) {
        this.a.post(new f(this));
    }

    public void onAnimationCancel(Animator animator) {
    }

    public void onAnimationRepeat(Animator animator) {
    }
}
