package android.support.design.widget;

import android.view.animation.Interpolator;

/* compiled from: Twttr */
class ValueAnimatorCompat {
    private final Impl mImpl;

    /* compiled from: Twttr */
    interface AnimatorUpdateListener {
        void onAnimationUpdate(ValueAnimatorCompat valueAnimatorCompat);
    }

    /* compiled from: Twttr */
    interface AnimatorListener {
        void onAnimationCancel(ValueAnimatorCompat valueAnimatorCompat);

        void onAnimationEnd(ValueAnimatorCompat valueAnimatorCompat);

        void onAnimationStart(ValueAnimatorCompat valueAnimatorCompat);
    }

    /* compiled from: Twttr */
    class AnimatorListenerAdapter implements AnimatorListener {
        AnimatorListenerAdapter() {
        }

        public void onAnimationStart(ValueAnimatorCompat valueAnimatorCompat) {
        }

        public void onAnimationEnd(ValueAnimatorCompat valueAnimatorCompat) {
        }

        public void onAnimationCancel(ValueAnimatorCompat valueAnimatorCompat) {
        }
    }

    /* compiled from: Twttr */
    /* renamed from: android.support.design.widget.ValueAnimatorCompat.1 */
    class AnonymousClass1 implements AnimatorUpdateListenerProxy {
        final /* synthetic */ AnimatorUpdateListener val$updateListener;

        AnonymousClass1(AnimatorUpdateListener animatorUpdateListener) {
            this.val$updateListener = animatorUpdateListener;
        }

        public void onAnimationUpdate() {
            this.val$updateListener.onAnimationUpdate(ValueAnimatorCompat.this);
        }
    }

    /* compiled from: Twttr */
    /* renamed from: android.support.design.widget.ValueAnimatorCompat.2 */
    class AnonymousClass2 implements AnimatorListenerProxy {
        final /* synthetic */ AnimatorListener val$listener;

        AnonymousClass2(AnimatorListener animatorListener) {
            this.val$listener = animatorListener;
        }

        public void onAnimationStart() {
            this.val$listener.onAnimationStart(ValueAnimatorCompat.this);
        }

        public void onAnimationEnd() {
            this.val$listener.onAnimationEnd(ValueAnimatorCompat.this);
        }

        public void onAnimationCancel() {
            this.val$listener.onAnimationCancel(ValueAnimatorCompat.this);
        }
    }

    /* compiled from: Twttr */
    interface Creator {
        ValueAnimatorCompat createAnimator();
    }

    /* compiled from: Twttr */
    abstract class Impl {

        /* compiled from: Twttr */
        interface AnimatorUpdateListenerProxy {
            void onAnimationUpdate();
        }

        /* compiled from: Twttr */
        interface AnimatorListenerProxy {
            void onAnimationCancel();

            void onAnimationEnd();

            void onAnimationStart();
        }

        abstract void cancel();

        abstract void end();

        abstract float getAnimatedFloatValue();

        abstract float getAnimatedFraction();

        abstract int getAnimatedIntValue();

        abstract long getDuration();

        abstract boolean isRunning();

        abstract void setDuration(int i);

        abstract void setFloatValues(float f, float f2);

        abstract void setIntValues(int i, int i2);

        abstract void setInterpolator(Interpolator interpolator);

        abstract void setListener(AnimatorListenerProxy animatorListenerProxy);

        abstract void setUpdateListener(AnimatorUpdateListenerProxy animatorUpdateListenerProxy);

        abstract void start();

        Impl() {
        }
    }

    ValueAnimatorCompat(Impl impl) {
        this.mImpl = impl;
    }

    public void start() {
        this.mImpl.start();
    }

    public boolean isRunning() {
        return this.mImpl.isRunning();
    }

    public void setInterpolator(Interpolator interpolator) {
        this.mImpl.setInterpolator(interpolator);
    }

    public void setUpdateListener(AnimatorUpdateListener animatorUpdateListener) {
        if (animatorUpdateListener != null) {
            this.mImpl.setUpdateListener(new AnonymousClass1(animatorUpdateListener));
        } else {
            this.mImpl.setUpdateListener(null);
        }
    }

    public void setListener(AnimatorListener animatorListener) {
        if (animatorListener != null) {
            this.mImpl.setListener(new AnonymousClass2(animatorListener));
        } else {
            this.mImpl.setListener(null);
        }
    }

    public void setIntValues(int i, int i2) {
        this.mImpl.setIntValues(i, i2);
    }

    public int getAnimatedIntValue() {
        return this.mImpl.getAnimatedIntValue();
    }

    public void setFloatValues(float f, float f2) {
        this.mImpl.setFloatValues(f, f2);
    }

    public float getAnimatedFloatValue() {
        return this.mImpl.getAnimatedFloatValue();
    }

    public void setDuration(int i) {
        this.mImpl.setDuration(i);
    }

    public void cancel() {
        this.mImpl.cancel();
    }

    public float getAnimatedFraction() {
        return this.mImpl.getAnimatedFraction();
    }

    public void end() {
        this.mImpl.end();
    }

    public long getDuration() {
        return this.mImpl.getDuration();
    }
}
