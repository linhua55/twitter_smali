package tv.periscope.android.view;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;

/* compiled from: Twttr */
class h implements AnimatorUpdateListener {
    final /* synthetic */ FuzzyBalls a;

    h(FuzzyBalls fuzzyBalls) {
        this.a = fuzzyBalls;
    }

    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.a.b.setColorFilter(((Integer) valueAnimator.getAnimatedValue()).intValue());
    }
}
