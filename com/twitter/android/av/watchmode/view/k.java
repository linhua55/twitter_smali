package com.twitter.android.av.watchmode.view;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.widget.RelativeLayout.LayoutParams;

/* compiled from: Twttr */
class k extends AnimatorListenerAdapter {
    final /* synthetic */ LayoutParams a;
    final /* synthetic */ i b;

    k(i iVar, LayoutParams layoutParams) {
        this.b = iVar;
        this.a = layoutParams;
    }

    public void onAnimationStart(Animator animator) {
        this.a.bottomMargin = this.b.c.h.getHeight();
        this.b.c.d.setLayoutParams(this.a);
        this.b.c.e();
    }
}
