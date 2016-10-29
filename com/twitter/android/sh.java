package com.twitter.android;

import android.view.View;
import android.view.animation.Animation;
import android.view.animation.TranslateAnimation;
import com.twitter.util.ui.c;

/* compiled from: Twttr */
class sh extends c {
    final /* synthetic */ View a;
    final /* synthetic */ TranslateAnimation b;
    final /* synthetic */ sg c;

    sh(sg sgVar, View view, TranslateAnimation translateAnimation) {
        this.c = sgVar;
        this.a = view;
        this.b = translateAnimation;
    }

    public void onAnimationEnd(Animation animation) {
        this.a.startAnimation(this.b);
    }
}
