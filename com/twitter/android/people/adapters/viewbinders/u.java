package com.twitter.android.people.adapters.viewbinders;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.support.v4.view.ViewPager;

/* compiled from: Twttr */
class u extends AnimatorListenerAdapter {
    final /* synthetic */ j a;
    final /* synthetic */ ViewPager b;
    final /* synthetic */ t c;

    u(t tVar, j jVar, ViewPager viewPager) {
        this.c = tVar;
        this.a = jVar;
        this.b = viewPager;
    }

    public void onAnimationEnd(Animator animator) {
        this.c.a(this.a, this.b);
    }

    public void onAnimationCancel(Animator animator) {
        this.c.a(this.a, this.b);
    }
}
