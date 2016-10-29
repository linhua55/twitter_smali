package com.twitter.android.av.watchmode.view;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.view.View;
import android.widget.RelativeLayout.LayoutParams;

/* compiled from: Twttr */
class n implements AnimatorUpdateListener {
    private final LayoutParams a;
    private final View b;

    private n(LayoutParams layoutParams, View view) {
        this.b = view;
        this.a = layoutParams;
    }

    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.a.bottomMargin = ((Integer) valueAnimator.getAnimatedValue()).intValue();
        this.b.setLayoutParams(this.a);
    }
}
