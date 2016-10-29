package com.twitter.android.moments.ui.fullscreen;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

/* compiled from: Twttr */
class gh extends AnimatorListenerAdapter {
    final /* synthetic */ TapHintView a;

    gh(TapHintView tapHintView) {
        this.a = tapHintView;
    }

    public void onAnimationEnd(Animator animator) {
        this.a.c.start();
    }
}
