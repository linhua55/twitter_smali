package defpackage;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;

/* compiled from: Twttr */
/* renamed from: agp */
class agp implements AnimatorUpdateListener {
    final /* synthetic */ ago a;

    agp(ago ago) {
        this.a = ago;
    }

    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.a.a.b.setBackgroundColor(((Integer) valueAnimator.getAnimatedValue()).intValue());
    }
}
