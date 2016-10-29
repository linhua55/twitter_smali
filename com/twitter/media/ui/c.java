package com.twitter.media.ui;

import android.animation.ValueAnimator;

/* compiled from: Twttr */
class c extends d {
    final /* synthetic */ AnimatingProgressBar a;

    c(AnimatingProgressBar animatingProgressBar) {
        this.a = animatingProgressBar;
        super(animatingProgressBar);
    }

    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        Integer num = (Integer) valueAnimator.getAnimatedValue();
        AnimatingProgressBar.c(this.a, num.intValue());
        a(num.intValue(), true);
    }
}
