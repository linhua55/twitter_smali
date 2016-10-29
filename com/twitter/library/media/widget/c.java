package com.twitter.library.media.widget;

import android.animation.Animator;
import com.twitter.util.ui.d;

/* compiled from: Twttr */
class c extends d {
    final /* synthetic */ AnimatablePromotedAdaptiveMediaView a;

    c(AnimatablePromotedAdaptiveMediaView animatablePromotedAdaptiveMediaView) {
        this.a = animatablePromotedAdaptiveMediaView;
    }

    public void onAnimationStart(Animator animator) {
        this.a.m = animator.isRunning();
    }

    public void onAnimationEnd(Animator animator) {
        if (animator.isRunning()) {
            this.a.b(this.a.f);
        }
    }
}
