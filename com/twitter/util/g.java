package com.twitter.util;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;

/* compiled from: Twttr */
final class g extends AnimatorListenerAdapter {
    final /* synthetic */ View a;
    final /* synthetic */ int b;

    g(View view, int i) {
        this.a = view;
        this.b = i;
    }

    public void onAnimationEnd(Animator animator) {
        this.a.setVisibility(8);
        this.a.setAlpha(1.0f);
        this.a.getLayoutParams().height = this.b;
    }
}
