package com.twitter.android.profiles.animation;

import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;

/* compiled from: Twttr */
class j implements AnimationListener {
    final /* synthetic */ i a;

    j(i iVar) {
        this.a = iVar;
    }

    public void onAnimationStart(Animation animation) {
    }

    public void onAnimationEnd(Animation animation) {
        this.a.b.removeView(this.a.a);
    }

    public void onAnimationRepeat(Animation animation) {
    }
}
