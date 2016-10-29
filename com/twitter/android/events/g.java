package com.twitter.android.events;

import com.twitter.android.SearchFragment;

/* compiled from: Twttr */
class g implements Runnable {
    final /* synthetic */ SearchFragment a;
    final /* synthetic */ f b;

    g(f fVar, SearchFragment searchFragment) {
        this.b = fVar;
        this.a = searchFragment;
    }

    public void run() {
        ((e) this.a).e(TwitterEventActivity.a(this.b.g));
    }
}
