package com.twitter.ui.widget;

import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;

/* compiled from: Twttr */
class i implements AnimationListener {
    final /* synthetic */ m a;
    final /* synthetic */ f b;

    i(f fVar, m mVar) {
        this.b = fVar;
        this.a = mVar;
    }

    public void onAnimationStart(Animation animation) {
    }

    public void onAnimationEnd(Animation animation) {
        if (this.b.q) {
            this.a.a();
            this.a.j();
            this.a.a(false);
            this.b.k.startAnimation(this.b.l);
        }
    }

    public void onAnimationRepeat(Animation animation) {
    }
}
