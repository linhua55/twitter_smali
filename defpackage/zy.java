package defpackage;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import zv;

/* compiled from: Twttr */
/* renamed from: zy */
class zy implements AnimatorUpdateListener {
    final /* synthetic */ zv a;

    zy(zv zvVar) {
        this.a = zvVar;
    }

    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        zv.a(this.a).setAlpha(((Integer) valueAnimator.getAnimatedValue()).intValue());
    }
}
