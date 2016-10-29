package tv.periscope.android.view;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;

/* compiled from: Twttr */
class j implements AnimatorUpdateListener {
    final /* synthetic */ FuzzyBalls a;

    j(FuzzyBalls fuzzyBalls) {
        this.a = fuzzyBalls;
    }

    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.a.d.setColorFilter(((Integer) valueAnimator.getAnimatedValue()).intValue());
    }
}
