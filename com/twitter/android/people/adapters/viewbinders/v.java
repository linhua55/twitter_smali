package com.twitter.android.people.adapters.viewbinders;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.support.v4.view.ViewPager;

/* compiled from: Twttr */
class v implements AnimatorUpdateListener {
    final /* synthetic */ ViewPager a;
    final /* synthetic */ t b;
    private int c;

    v(t tVar, ViewPager viewPager) {
        this.b = tVar;
        this.a = viewPager;
        this.c = 0;
    }

    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        if (this.a.isFakeDragging()) {
            try {
                int intValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                this.a.fakeDragBy((float) (this.c - intValue));
                this.c = intValue;
            } catch (NullPointerException e) {
            }
        }
    }
}
