package com.facebook.shimmer;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;

/* compiled from: Twttr */
class d implements AnimatorUpdateListener {
    final /* synthetic */ ShimmerFrameLayout a;

    d(ShimmerFrameLayout shimmerFrameLayout) {
        this.a = shimmerFrameLayout;
    }

    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        float max = Math.max(0.0f, Math.min(1.0f, ((Float) valueAnimator.getAnimatedValue()).floatValue()));
        this.a.setMaskOffsetX((int) ((((float) this.a.g.a) * (1.0f - max)) + (((float) this.a.g.c) * max)));
        this.a.setMaskOffsetY((int) ((max * ((float) this.a.g.d)) + (((float) this.a.g.b) * (1.0f - max))));
    }
}
