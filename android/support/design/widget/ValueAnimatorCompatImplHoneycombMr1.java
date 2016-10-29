package android.support.design.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.view.animation.Interpolator;

/* compiled from: Twttr */
class ValueAnimatorCompatImplHoneycombMr1 extends Impl {
    final ValueAnimator mValueAnimator;

    /* compiled from: Twttr */
    /* renamed from: android.support.design.widget.ValueAnimatorCompatImplHoneycombMr1.1 */
    class AnonymousClass1 implements AnimatorUpdateListener {
        final /* synthetic */ AnimatorUpdateListenerProxy val$updateListener;

        AnonymousClass1(AnimatorUpdateListenerProxy animatorUpdateListenerProxy) {
            this.val$updateListener = animatorUpdateListenerProxy;
        }

        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            this.val$updateListener.onAnimationUpdate();
        }
    }

    /* compiled from: Twttr */
    /* renamed from: android.support.design.widget.ValueAnimatorCompatImplHoneycombMr1.2 */
    class AnonymousClass2 extends AnimatorListenerAdapter {
        final /* synthetic */ AnimatorListenerProxy val$listener;

        AnonymousClass2(AnimatorListenerProxy animatorListenerProxy) {
            this.val$listener = animatorListenerProxy;
        }

        public void onAnimationStart(Animator animator) {
            this.val$listener.onAnimationStart();
        }

        public void onAnimationEnd(Animator animator) {
            this.val$listener.onAnimationEnd();
        }

        public void onAnimationCancel(Animator animator) {
            this.val$listener.onAnimationCancel();
        }
    }

    ValueAnimatorCompatImplHoneycombMr1() {
        this.mValueAnimator = new ValueAnimator();
    }

    public void start() {
        this.mValueAnimator.start();
    }

    public boolean isRunning() {
        return this.mValueAnimator.isRunning();
    }

    public void setInterpolator(Interpolator interpolator) {
        this.mValueAnimator.setInterpolator(interpolator);
    }

    public void setUpdateListener(AnimatorUpdateListenerProxy animatorUpdateListenerProxy) {
        this.mValueAnimator.addUpdateListener(new AnonymousClass1(animatorUpdateListenerProxy));
    }

    public void setListener(AnimatorListenerProxy animatorListenerProxy) {
        this.mValueAnimator.addListener(new AnonymousClass2(animatorListenerProxy));
    }

    public void setIntValues(int i, int i2) {
        this.mValueAnimator.setIntValues(new int[]{i, i2});
    }

    public int getAnimatedIntValue() {
        return ((Integer) this.mValueAnimator.getAnimatedValue()).intValue();
    }

    public void setFloatValues(float f, float f2) {
        this.mValueAnimator.setFloatValues(new float[]{f, f2});
    }

    public float getAnimatedFloatValue() {
        return ((Float) this.mValueAnimator.getAnimatedValue()).floatValue();
    }

    public void setDuration(int i) {
        this.mValueAnimator.setDuration((long) i);
    }

    public void cancel() {
        this.mValueAnimator.cancel();
    }

    public float getAnimatedFraction() {
        return this.mValueAnimator.getAnimatedFraction();
    }

    public void end() {
        this.mValueAnimator.end();
    }

    public long getDuration() {
        return this.mValueAnimator.getDuration();
    }
}
