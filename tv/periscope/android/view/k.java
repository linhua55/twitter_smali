package tv.periscope.android.view;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;

/* compiled from: Twttr */
class k implements AnimatorUpdateListener {
    final /* synthetic */ FuzzyBalls a;

    k(FuzzyBalls fuzzyBalls) {
        this.a = fuzzyBalls;
    }

    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.a.e.setColorFilter(((Integer) valueAnimator.getAnimatedValue()).intValue());
    }
}
