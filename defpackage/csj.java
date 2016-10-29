package defpackage;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;

/* compiled from: Twttr */
/* renamed from: csj */
class csj implements AnimatorListener, AnimatorUpdateListener {
    final /* synthetic */ csg a;

    private csj(csg csg) {
        this.a = csg;
    }

    public void onAnimationStart(Animator animator) {
    }

    public void onAnimationEnd(Animator animator) {
        csi g = this.a.g();
        if (g != null) {
            g.a(this.a, this.a.h);
        }
    }

    public void onAnimationCancel(Animator animator) {
    }

    public void onAnimationRepeat(Animator animator) {
    }

    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.a.b(((Float) valueAnimator.getAnimatedValue()).floatValue());
        this.a.invalidateSelf();
    }
}
