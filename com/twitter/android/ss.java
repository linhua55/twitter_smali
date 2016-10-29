package com.twitter.android;

import android.view.View;
import android.view.animation.Animation;
import com.twitter.util.ui.c;

/* compiled from: Twttr */
class ss extends c {
    final /* synthetic */ View a;
    final /* synthetic */ Runnable b;
    final /* synthetic */ int c;
    final /* synthetic */ sn d;

    ss(sn snVar, View view, Runnable runnable, int i) {
        this.d = snVar;
        this.a = view;
        this.b = runnable;
        this.c = i;
    }

    public void onAnimationEnd(Animation animation) {
        this.a.clearAnimation();
        this.b.run();
        this.a.postDelayed(new st(this), 100);
    }
}
