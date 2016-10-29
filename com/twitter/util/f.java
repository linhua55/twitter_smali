package com.twitter.util;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.view.View;

/* compiled from: Twttr */
final class f implements AnimatorUpdateListener {
    final /* synthetic */ View a;
    final /* synthetic */ int b;

    f(View view, int i) {
        this.a = view;
        this.b = i;
    }

    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.a.getLayoutParams().height = (int) (((float) this.b) * floatValue);
        this.a.setAlpha(floatValue);
        this.a.requestLayout();
    }
}
