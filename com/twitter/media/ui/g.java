package com.twitter.media.ui;

import android.animation.ValueAnimator;

/* compiled from: Twttr */
class g extends d {
    final /* synthetic */ AnimatingProgressBar a;

    g(AnimatingProgressBar animatingProgressBar) {
        this.a = animatingProgressBar;
        super(animatingProgressBar);
    }

    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        Integer num = (Integer) valueAnimator.getAnimatedValue();
        AnimatingProgressBar.d(this.a, num.intValue());
        a(num.intValue(), false);
    }
}
