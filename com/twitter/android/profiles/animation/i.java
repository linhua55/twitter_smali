package com.twitter.android.profiles.animation;

import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;

/* compiled from: Twttr */
class i implements Runnable {
    final /* synthetic */ ImageView a;
    final /* synthetic */ FlyThroughSetAnimationView b;

    i(FlyThroughSetAnimationView flyThroughSetAnimationView, ImageView imageView) {
        this.b = flyThroughSetAnimationView;
        this.a = imageView;
    }

    public void run() {
        this.a.setVisibility(8);
        Animation loadAnimation = AnimationUtils.loadAnimation(this.b.getContext(), 2131034160);
        loadAnimation.setAnimationListener(new j(this));
        this.a.startAnimation(loadAnimation);
    }
}
