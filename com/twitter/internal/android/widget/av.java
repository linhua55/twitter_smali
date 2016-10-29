package com.twitter.internal.android.widget;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;

/* compiled from: Twttr */
class av implements AnimatorListener {
    final /* synthetic */ au a;

    av(au auVar) {
        this.a = auVar;
    }

    public void onAnimationStart(Animator animator) {
    }

    public void onAnimationEnd(Animator animator) {
        this.a.K = false;
        if (this.a.J) {
            this.a.n = null;
            this.a.o = null;
            this.a.requestLayout();
            this.a.setContentDescription(null);
        }
    }

    public void onAnimationCancel(Animator animator) {
        this.a.J = false;
    }

    public void onAnimationRepeat(Animator animator) {
    }
}
