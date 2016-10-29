package com.twitter.android.profiles.animation;

import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;

/* compiled from: Twttr */
class a implements AnimationListener {
    final /* synthetic */ View a;
    final /* synthetic */ BalloonSetAnimationView b;

    a(BalloonSetAnimationView balloonSetAnimationView, View view) {
        this.b = balloonSetAnimationView;
        this.a = view;
    }

    public void onAnimationStart(Animation animation) {
        this.b.removeView(this.a);
    }

    public void onAnimationEnd(Animation animation) {
    }

    public void onAnimationRepeat(Animation animation) {
    }
}
