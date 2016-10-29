package com.twitter.android.av.watchmode.view;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.widget.RelativeLayout.LayoutParams;

/* compiled from: Twttr */
class j extends AnimatorListenerAdapter {
    final /* synthetic */ LayoutParams a;
    final /* synthetic */ i b;

    j(i iVar, LayoutParams layoutParams) {
        this.b = iVar;
        this.a = layoutParams;
    }

    public void onAnimationEnd(Animator animator) {
        this.a.bottomMargin = 0;
        this.b.c.d.setLayoutParams(this.a);
    }
}
