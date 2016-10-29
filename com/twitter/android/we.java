package com.twitter.android;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;

/* compiled from: Twttr */
class we extends AnimatorListenerAdapter {
    final /* synthetic */ View a;
    final /* synthetic */ wb b;

    we(wb wbVar, View view) {
        this.b = wbVar;
        this.a = view;
    }

    public void onAnimationStart(Animator animator) {
        this.a.setVisibility(0);
    }
}
