package com.twitter.library.widget;

import android.view.animation.Animation;

/* compiled from: Twttr */
class h implements Runnable {
    final /* synthetic */ Animation a;
    final /* synthetic */ FadeInTextView b;

    h(FadeInTextView fadeInTextView, Animation animation) {
        this.b = fadeInTextView;
        this.a = animation;
    }

    public void run() {
        this.b.startAnimation(this.a);
    }
}
