package com.twitter.internal.android.widget;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;

/* compiled from: Twttr */
class d implements AnimatorListener {
    final /* synthetic */ a a;

    d(a aVar) {
        this.a = aVar;
    }

    public void onAnimationStart(Animator animator) {
    }

    public void onAnimationEnd(Animator animator) {
        this.a.a(1.0f);
        this.a.l = null;
    }

    public void onAnimationCancel(Animator animator) {
        this.a.a(1.0f);
        this.a.l = null;
    }

    public void onAnimationRepeat(Animator animator) {
    }
}
