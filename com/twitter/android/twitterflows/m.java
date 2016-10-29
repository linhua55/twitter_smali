package com.twitter.android.twitterflows;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewGroup;
import flow.g;

/* compiled from: Twttr */
class m extends AnimatorListenerAdapter {
    final /* synthetic */ ViewGroup a;
    final /* synthetic */ View b;
    final /* synthetic */ g c;
    final /* synthetic */ TwitterFlowsActivity d;

    m(TwitterFlowsActivity twitterFlowsActivity, ViewGroup viewGroup, View view, g gVar) {
        this.d = twitterFlowsActivity;
        this.a = viewGroup;
        this.b = view;
        this.c = gVar;
    }

    public void onAnimationEnd(Animator animator) {
        this.a.removeView(this.b);
        this.c.a();
    }
}
