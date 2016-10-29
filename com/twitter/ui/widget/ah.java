package com.twitter.ui.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

/* compiled from: Twttr */
final class ah extends AnimatorListenerAdapter {
    private final ag a;

    private ah(ag agVar) {
        this.a = agVar;
    }

    public void onAnimationStart(Animator animator) {
        this.a.B = true;
        this.a.setVisibility(0);
    }

    public void onAnimationEnd(Animator animator) {
        this.a.B = false;
        if (animator == this.a.z) {
            this.a.b();
        } else if (animator == this.a.A) {
            ag.f(this.a);
        }
    }
}
