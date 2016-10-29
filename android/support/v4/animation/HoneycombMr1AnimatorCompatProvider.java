package android.support.v4.animation;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.view.View;

/* compiled from: Twttr */
class HoneycombMr1AnimatorCompatProvider implements AnimatorProvider {
    private TimeInterpolator mDefaultInterpolator;

    /* compiled from: Twttr */
    class AnimatorListenerCompatWrapper implements AnimatorListener {
        final ValueAnimatorCompat mValueAnimatorCompat;
        final AnimatorListenerCompat mWrapped;

        public AnimatorListenerCompatWrapper(AnimatorListenerCompat animatorListenerCompat, ValueAnimatorCompat valueAnimatorCompat) {
            this.mWrapped = animatorListenerCompat;
            this.mValueAnimatorCompat = valueAnimatorCompat;
        }

        public void onAnimationStart(Animator animator) {
            this.mWrapped.onAnimationStart(this.mValueAnimatorCompat);
        }

        public void onAnimationEnd(Animator animator) {
            this.mWrapped.onAnimationEnd(this.mValueAnimatorCompat);
        }

        public void onAnimationCancel(Animator animator) {
            this.mWrapped.onAnimationCancel(this.mValueAnimatorCompat);
        }

        public void onAnimationRepeat(Animator animator) {
            this.mWrapped.onAnimationRepeat(this.mValueAnimatorCompat);
        }
    }

    /* compiled from: Twttr */
    class HoneycombValueAnimatorCompat implements ValueAnimatorCompat {
        final Animator mWrapped;

        /* compiled from: Twttr */
        /* renamed from: android.support.v4.animation.HoneycombMr1AnimatorCompatProvider.HoneycombValueAnimatorCompat.1 */
        class AnonymousClass1 implements AnimatorUpdateListener {
            final /* synthetic */ AnimatorUpdateListenerCompat val$animatorUpdateListener;

            AnonymousClass1(AnimatorUpdateListenerCompat animatorUpdateListenerCompat) {
                this.val$animatorUpdateListener = animatorUpdateListenerCompat;
            }

            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.val$animatorUpdateListener.onAnimationUpdate(HoneycombValueAnimatorCompat.this);
            }
        }

        public HoneycombValueAnimatorCompat(Animator animator) {
            this.mWrapped = animator;
        }

        public void setTarget(View view) {
            this.mWrapped.setTarget(view);
        }

        public void addListener(AnimatorListenerCompat animatorListenerCompat) {
            this.mWrapped.addListener(new AnimatorListenerCompatWrapper(animatorListenerCompat, this));
        }

        public void setDuration(long j) {
            this.mWrapped.setDuration(j);
        }

        public void start() {
            this.mWrapped.start();
        }

        public void cancel() {
            this.mWrapped.cancel();
        }

        public void addUpdateListener(AnimatorUpdateListenerCompat animatorUpdateListenerCompat) {
            if (this.mWrapped instanceof ValueAnimator) {
                ((ValueAnimator) this.mWrapped).addUpdateListener(new AnonymousClass1(animatorUpdateListenerCompat));
            }
        }

        public float getAnimatedFraction() {
            return ((ValueAnimator) this.mWrapped).getAnimatedFraction();
        }
    }

    HoneycombMr1AnimatorCompatProvider() {
    }

    public ValueAnimatorCompat emptyValueAnimator() {
        return new HoneycombValueAnimatorCompat(ValueAnimator.ofFloat(new float[]{0.0f, 1.0f}));
    }

    public void clearInterpolator(View view) {
        if (this.mDefaultInterpolator == null) {
            this.mDefaultInterpolator = new ValueAnimator().getInterpolator();
        }
        view.animate().setInterpolator(this.mDefaultInterpolator);
    }
}
