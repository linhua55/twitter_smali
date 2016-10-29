package com.twitter.library.media.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.view.animation.DecelerateInterpolator;
import java.lang.ref.WeakReference;

/* compiled from: Twttr */
abstract class l extends AnimatorListenerAdapter implements AnimatorUpdateListener {
    private final WeakReference<CroppableImageView> a;
    private ValueAnimator b;

    l(CroppableImageView croppableImageView) {
        this.a = new WeakReference(croppableImageView);
    }

    public void onAnimationStart(Animator animator) {
        CroppableImageView croppableImageView = (CroppableImageView) this.a.get();
        if (croppableImageView == null) {
            this.b.cancel();
        } else {
            croppableImageView.setAnimating(true);
        }
    }

    public void onAnimationEnd(Animator animator) {
        CroppableImageView croppableImageView = (CroppableImageView) this.a.get();
        if (croppableImageView == null) {
            this.b.cancel();
        } else {
            croppableImageView.setAnimating(false);
        }
    }

    protected void a(ValueAnimator valueAnimator) {
        valueAnimator.setInterpolator(new DecelerateInterpolator());
        valueAnimator.addUpdateListener(this);
        valueAnimator.addListener(this);
        this.b = valueAnimator;
    }

    public void a() {
        this.b.start();
    }

    protected CroppableImageView b() {
        CroppableImageView croppableImageView = (CroppableImageView) this.a.get();
        if (croppableImageView == null) {
            this.b.cancel();
        }
        return croppableImageView;
    }
}
