package com.twitter.android.profiles.animation;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.widget.ImageView;

/* compiled from: Twttr */
class s implements AnimatorUpdateListener {
    final /* synthetic */ ValueAnimator a;
    final /* synthetic */ ImageView b;
    final /* synthetic */ FlyThroughSetAnimationView c;

    s(FlyThroughSetAnimationView flyThroughSetAnimationView, ValueAnimator valueAnimator, ImageView imageView) {
        this.c = flyThroughSetAnimationView;
        this.a = valueAnimator;
        this.b = imageView;
    }

    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        int animatedFraction = (int) (50.0f * this.a.getAnimatedFraction());
        if (animatedFraction < 25) {
            this.b.setTranslationY((float) animatedFraction);
        } else if (animatedFraction < 50) {
            this.b.setTranslationY((float) (50 - animatedFraction));
        }
    }
}
