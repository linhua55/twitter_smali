package com.twitter.android.twitterflows;

import android.view.View;
import android.view.ViewGroup;
import flow.Flow.Direction;
import flow.g;

/* compiled from: Twttr */
class k implements h {
    final /* synthetic */ ViewGroup a;
    final /* synthetic */ View b;
    final /* synthetic */ Direction c;
    final /* synthetic */ g d;
    final /* synthetic */ TwitterFlowsActivity e;

    k(TwitterFlowsActivity twitterFlowsActivity, ViewGroup viewGroup, View view, Direction direction, g gVar) {
        this.e = twitterFlowsActivity;
        this.a = viewGroup;
        this.b = view;
        this.c = direction;
        this.d = gVar;
    }

    public void a(View view, int i, int i2) {
        this.e.b(this.a, this.b, view, this.c, new l(this));
    }
}
