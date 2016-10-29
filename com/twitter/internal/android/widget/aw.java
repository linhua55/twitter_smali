package com.twitter.internal.android.widget;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import com.twitter.util.ui.h;

/* compiled from: Twttr */
class aw implements AnimatorUpdateListener {
    final /* synthetic */ au a;

    aw(au auVar) {
        this.a = auVar;
    }

    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        int intValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
        this.a.t = h.a(this.a.r, intValue);
        this.a.u = h.a(this.a.s, intValue);
        this.a.invalidate();
    }
}
