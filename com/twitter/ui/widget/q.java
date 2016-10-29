package com.twitter.ui.widget;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;

/* compiled from: Twttr */
class q implements AnimatorUpdateListener {
    final /* synthetic */ int a;
    final /* synthetic */ PromptView b;

    q(PromptView promptView, int i) {
        this.b = promptView;
        this.a = i;
    }

    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.b.getLayoutParams().height = (int) ((((float) this.a) * floatValue) + (this.b.getAnimatingEndingHeight() * (1.0f - floatValue)));
        this.b.setAlpha(floatValue);
        this.b.requestLayout();
    }
}
