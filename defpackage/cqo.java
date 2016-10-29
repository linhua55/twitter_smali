package defpackage;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import cqn;

/* compiled from: Twttr */
/* renamed from: cqo */
class cqo implements AnimatorUpdateListener {
    final /* synthetic */ cqn a;

    cqo(cqn cqn) {
        this.a = cqn;
    }

    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        if (cqn.a(this.a) != null) {
            cqn.a(this.a).a(floatValue);
        }
    }
}
