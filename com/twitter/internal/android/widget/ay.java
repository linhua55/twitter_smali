package com.twitter.internal.android.widget;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;

/* compiled from: Twttr */
class ay implements AnimatorUpdateListener {
    final /* synthetic */ au a;

    ay(au auVar) {
        this.a = auVar;
    }

    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.a.Q = ((Integer) valueAnimator.getAnimatedValue()).intValue();
        this.a.invalidate();
    }
}
