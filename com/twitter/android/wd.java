package com.twitter.android;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;

/* compiled from: Twttr */
class wd extends AnimatorListenerAdapter {
    final /* synthetic */ View a;
    final /* synthetic */ wb b;

    wd(wb wbVar, View view) {
        this.b = wbVar;
        this.a = view;
    }

    public void onAnimationEnd(Animator animator) {
        this.a.setTranslationY(0.0f);
        this.a.setVisibility(8);
    }
}
