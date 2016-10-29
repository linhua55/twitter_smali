package com.twitter.android.av.watchmode.view;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

/* compiled from: Twttr */
class q extends AnimatorListenerAdapter {
    final /* synthetic */ boolean a;
    final /* synthetic */ WatchModeListItemView b;

    q(WatchModeListItemView watchModeListItemView, boolean z) {
        this.b = watchModeListItemView;
        this.a = z;
    }

    public void onAnimationStart(Animator animator) {
        this.b.u = true;
    }

    public void onAnimationEnd(Animator animator) {
        this.b.u = false;
        this.b.a(this.a);
    }
}
