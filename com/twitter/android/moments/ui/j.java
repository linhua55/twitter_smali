package com.twitter.android.moments.ui;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.support.annotation.VisibleForTesting;
import android.support.v4.view.ViewPager;
import android.view.animation.Interpolator;
import crd;

/* compiled from: Twttr */
public class j extends AnimatorListenerAdapter implements AnimatorUpdateListener {
    private final Interpolator a;
    private final ViewPager b;
    private final ValueAnimator c;
    private final ValueAnimator d;
    private int e;

    public j(ViewPager viewPager) {
        this(viewPager, new ValueAnimator(), new ValueAnimator());
    }

    @VisibleForTesting
    j(ViewPager viewPager, ValueAnimator valueAnimator, ValueAnimator valueAnimator2) {
        this.a = crd.b();
        this.b = viewPager;
        this.c = valueAnimator;
        this.d = valueAnimator2;
        this.c.addUpdateListener(this);
        this.c.addListener(this);
        this.d.addUpdateListener(this);
        this.d.addListener(this);
        this.c.setDuration(300);
        this.c.setInterpolator(this.a);
        this.d.setDuration(300);
        this.d.setInterpolator(this.a);
    }

    public void onAnimationEnd(Animator animator) {
        if (this.b.isFakeDragging()) {
            this.b.endFakeDrag();
        }
    }

    public void a() {
        if (!this.c.isStarted() && !this.d.isStarted()) {
            this.e = 0;
            this.c.setIntValues(new int[]{0, -this.b.getWidth()});
            this.c.start();
        }
    }

    public void b() {
        if (!this.c.isStarted() && !this.d.isStarted()) {
            this.e = 0;
            this.d.setIntValues(new int[]{0, this.b.getWidth()});
            this.d.start();
        }
    }

    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        if (this.b.getAdapter() != null && this.b.getAdapter().getCount() > 0) {
            Object obj = (this.b.isFakeDragging() || this.b.beginFakeDrag()) ? 1 : null;
            if (obj != null) {
                int intValue = ((Integer) valueAnimator.getAnimatedValue()).intValue() - this.e;
                if (intValue != 0) {
                    this.b.fakeDragBy((float) intValue);
                }
                this.e = intValue + this.e;
                return;
            }
            valueAnimator.cancel();
        }
    }
}
