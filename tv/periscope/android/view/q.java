package tv.periscope.android.view;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import defpackage.gv;

/* compiled from: Twttr */
class q implements AnimatorUpdateListener {
    final /* synthetic */ PsLoading a;

    q(PsLoading psLoading) {
        this.a = psLoading;
    }

    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.a.h = valueAnimator.getAnimatedFraction() * ((float) this.a.f.getIntrinsicWidth());
        if (!this.a.i) {
            if (valueAnimator.getCurrentPlayTime() < 300) {
                this.a.setAlpha((float) gv.a((double) valueAnimator.getCurrentPlayTime(), 0.0d, 300.0d, 0.0d, 1.0d));
            } else {
                this.a.i = true;
            }
        }
        this.a.invalidate();
    }
}
