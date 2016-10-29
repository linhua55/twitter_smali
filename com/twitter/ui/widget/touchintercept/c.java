package com.twitter.ui.widget.touchintercept;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;

/* compiled from: Twttr */
class c implements AnimatorUpdateListener {
    final /* synthetic */ a a;

    c(a aVar) {
        this.a = aVar;
    }

    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.a.b();
    }
}
