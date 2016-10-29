package com.twitter.app.common.list;

/* compiled from: Twttr */
class f implements Runnable {
    final /* synthetic */ TwitterListFragment a;

    f(TwitterListFragment twitterListFragment) {
        this.a = twitterListFragment;
    }

    public void run() {
        if (!TwitterListFragment.b(this.a, 2) && !this.a.av()) {
            this.a.ap().a(true);
        }
    }
}
