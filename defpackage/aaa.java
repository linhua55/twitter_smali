package defpackage;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;

/* compiled from: Twttr */
/* renamed from: aaa */
class aaa implements AnimatorUpdateListener {
    final /* synthetic */ zv a;

    aaa(zv zvVar) {
        this.a = zvVar;
    }

    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.a.e.setAlpha(((Integer) valueAnimator.getAnimatedValue()).intValue());
    }
}
