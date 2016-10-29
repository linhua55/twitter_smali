package com.twitter.android.util;

import android.view.View;
import android.view.animation.Animation;
import android.view.animation.RotateAnimation;
import com.twitter.util.math.b;

/* compiled from: Twttr */
final class k implements Runnable {
    final /* synthetic */ int a;
    final /* synthetic */ View b;
    final /* synthetic */ int c;
    final /* synthetic */ int d;

    k(int i, View view, int i2, int i3) {
        this.a = i;
        this.b = view;
        this.c = i2;
        this.d = i3;
    }

    public void run() {
        Animation rotateAnimation = new RotateAnimation(0.0f, (float) (b.a((this.a - Math.round(this.b.getRotation())) + 180, 360) - 180), 1, 0.5f, 1, 0.5f);
        rotateAnimation.setDuration((long) this.c);
        rotateAnimation.setAnimationListener(new l(this));
        if (this.d > 0) {
            rotateAnimation.setInterpolator(this.b.getContext(), this.d);
        }
        this.b.startAnimation(rotateAnimation);
    }
}
