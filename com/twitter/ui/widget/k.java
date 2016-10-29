package com.twitter.ui.widget;

import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;

/* compiled from: Twttr */
class k implements AnimationListener {
    final /* synthetic */ m a;
    final /* synthetic */ f b;

    k(f fVar, m mVar) {
        this.b = fVar;
        this.a = mVar;
    }

    public void onAnimationStart(Animation animation) {
        this.b.m = 0.0f;
    }

    public void onAnimationEnd(Animation animation) {
    }

    public void onAnimationRepeat(Animation animation) {
        this.a.j();
        this.a.a();
        this.a.b(this.a.g());
        this.b.m = (this.b.m + 1.0f) % 5.0f;
    }
}
