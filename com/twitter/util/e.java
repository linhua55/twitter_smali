package com.twitter.util;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;

/* compiled from: Twttr */
final class e extends AnimatorListenerAdapter {
    final /* synthetic */ View a;
    final /* synthetic */ int b;

    e(View view, int i) {
        this.a = view;
        this.b = i;
    }

    public void onAnimationEnd(Animator animator) {
        this.a.setVisibility(this.b);
        this.a.setAlpha(1.0f);
    }
}
