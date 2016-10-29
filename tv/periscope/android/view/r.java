package tv.periscope.android.view;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;

/* compiled from: Twttr */
class r implements AnimatorUpdateListener {
    final /* synthetic */ PsLoading a;

    r(PsLoading psLoading) {
        this.a = psLoading;
    }

    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.a.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }
}
