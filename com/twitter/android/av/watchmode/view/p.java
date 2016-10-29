package com.twitter.android.av.watchmode.view;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

/* compiled from: Twttr */
class p extends AnimatorListenerAdapter {
    final /* synthetic */ boolean a;
    final /* synthetic */ WatchModeListItemView b;

    p(WatchModeListItemView watchModeListItemView, boolean z) {
        this.b = watchModeListItemView;
        this.a = z;
    }

    public void onAnimationStart(Animator animator) {
        this.b.u = true;
        this.b.a(this.a);
    }

    public void onAnimationEnd(Animator animator) {
        this.b.u = false;
    }
}
