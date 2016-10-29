package com.twitter.internal.android.widget;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;

/* compiled from: Twttr */
class b implements AnimatorUpdateListener {
    final /* synthetic */ a a;

    b(a aVar) {
        this.a = aVar;
    }

    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.a.a(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }
}
