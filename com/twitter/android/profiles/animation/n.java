package com.twitter.android.profiles.animation;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.graphics.PathMeasure;
import android.widget.ImageView;

/* compiled from: Twttr */
class n implements AnimatorUpdateListener {
    final /* synthetic */ PathMeasure a;
    final /* synthetic */ float[] b;
    final /* synthetic */ ImageView c;
    final /* synthetic */ FlyThroughSetAnimationView d;

    n(FlyThroughSetAnimationView flyThroughSetAnimationView, PathMeasure pathMeasure, float[] fArr, ImageView imageView) {
        this.d = flyThroughSetAnimationView;
        this.a = pathMeasure;
        this.b = fArr;
        this.c = imageView;
    }

    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.a.getPosTan(valueAnimator.getAnimatedFraction() * this.a.getLength(), this.b, null);
        this.c.setTranslationX(this.b[0]);
        this.c.setTranslationY(this.b[1]);
    }
}
