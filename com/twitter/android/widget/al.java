package com.twitter.android.widget;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;

/* compiled from: Twttr */
class al implements AnimatorUpdateListener {
    final /* synthetic */ DraggableHeaderLayout a;

    al(DraggableHeaderLayout draggableHeaderLayout) {
        this.a = draggableHeaderLayout;
    }

    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.a.i = ((Integer) valueAnimator.getAnimatedValue()).intValue();
        this.a.requestLayout();
    }
}
