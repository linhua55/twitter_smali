package tv.periscope.android.view;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;

/* compiled from: Twttr */
class i implements AnimatorUpdateListener {
    final /* synthetic */ FuzzyBalls a;

    i(FuzzyBalls fuzzyBalls) {
        this.a = fuzzyBalls;
    }

    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.a.c.setColorFilter(((Integer) valueAnimator.getAnimatedValue()).intValue());
    }
}
