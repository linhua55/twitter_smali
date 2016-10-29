package com.twitter.ui.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

/* compiled from: Twttr */
class aq extends AnimatorListenerAdapter {
    final /* synthetic */ TwitterIndeterminateProgressSpinner a;

    aq(TwitterIndeterminateProgressSpinner twitterIndeterminateProgressSpinner) {
        this.a = twitterIndeterminateProgressSpinner;
    }

    public void onAnimationEnd(Animator animator) {
        if (this.a.l) {
            ((Animator) this.a.d.get(Integer.valueOf(2))).start();
        }
    }
}
