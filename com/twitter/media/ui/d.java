package com.twitter.media.ui;

import android.animation.ObjectAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.view.animation.AccelerateInterpolator;

/* compiled from: Twttr */
abstract class d implements AnimatorUpdateListener {
    final /* synthetic */ AnimatingProgressBar b;

    d(AnimatingProgressBar animatingProgressBar) {
        this.b = animatingProgressBar;
    }

    protected void a(int i, boolean z) {
        if (i == this.b.getMax()) {
            boolean d;
            if (z) {
                d = AnimatingProgressBar.d(this.b);
            } else {
                d = AnimatingProgressBar.e(this.b);
            }
            if (AnimatingProgressBar.f(this.b)) {
                ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.b, "alpha", new float[]{0.0f});
                ofFloat.setDuration((long) AnimatingProgressBar.g(this.b));
                ofFloat.setInterpolator(new AccelerateInterpolator());
                ofFloat.addListener(new e(this.b));
                ofFloat.start();
            } else if (!d) {
            } else {
                if (z) {
                    this.b.setProgress(0);
                } else {
                    this.b.setSecondaryProgress(0);
                }
            }
        }
    }
}
