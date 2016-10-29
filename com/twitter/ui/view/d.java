package com.twitter.ui.view;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

/* compiled from: Twttr */
class d extends AnimatorListenerAdapter {
    final /* synthetic */ int a;
    final /* synthetic */ FabAnimator b;

    d(FabAnimator fabAnimator, int i) {
        this.b = fabAnimator;
        this.a = i;
    }

    public void onAnimationEnd(Animator animator) {
        this.b.d.a(this.a);
    }
}
