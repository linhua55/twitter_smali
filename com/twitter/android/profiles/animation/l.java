package com.twitter.android.profiles.animation;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.graphics.PathMeasure;
import android.view.View;

/* compiled from: Twttr */
class l implements AnimatorUpdateListener {
    final /* synthetic */ PathMeasure a;
    final /* synthetic */ float[] b;
    final /* synthetic */ View c;
    final /* synthetic */ FlyThroughSetAnimationView d;

    l(FlyThroughSetAnimationView flyThroughSetAnimationView, PathMeasure pathMeasure, float[] fArr, View view) {
        this.d = flyThroughSetAnimationView;
        this.a = pathMeasure;
        this.b = fArr;
        this.c = view;
    }

    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.a.getPosTan(valueAnimator.getAnimatedFraction() * this.a.getLength(), this.b, null);
        this.c.setTranslationX(this.b[0]);
        this.c.setTranslationY(this.b[1]);
    }
}
