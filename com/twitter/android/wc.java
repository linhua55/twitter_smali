package com.twitter.android;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

/* compiled from: Twttr */
class wc extends AnimatorListenerAdapter {
    final /* synthetic */ wb a;

    wc(wb wbVar) {
        this.a = wbVar;
    }

    public void onAnimationEnd(Animator animator) {
        if (this.a.d.d()) {
            animator.start();
        }
    }
}
