package com.twitter.internal.android.widget;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;

/* compiled from: Twttr */
class ax implements AnimatorListener {
    final /* synthetic */ au a;

    ax(au auVar) {
        this.a = auVar;
    }

    public void onAnimationStart(Animator animator) {
    }

    public void onAnimationEnd(Animator animator) {
        this.a.M = false;
        if (this.a.N) {
            this.a.p = null;
            this.a.q = null;
            this.a.requestLayout();
        }
    }

    public void onAnimationCancel(Animator animator) {
        this.a.N = false;
    }

    public void onAnimationRepeat(Animator animator) {
    }
}
