package com.twitter.android;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.ViewGroup;

/* compiled from: Twttr */
class wg extends AnimatorListenerAdapter {
    final /* synthetic */ wb a;

    wg(wb wbVar) {
        this.a = wbVar;
    }

    public void onAnimationEnd(Animator animator) {
        this.a.h();
        ((ViewGroup) this.a.c.findViewById(2131952369)).removeAllViews();
        this.a.c.setTranslationY(0.0f);
        this.a.c.setVisibility(8);
    }
}
