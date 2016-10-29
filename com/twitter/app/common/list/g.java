package com.twitter.app.common.list;

/* compiled from: Twttr */
class g implements Runnable {
    final /* synthetic */ TwitterListFragment a;

    g(TwitterListFragment twitterListFragment) {
        this.a = twitterListFragment;
    }

    public void run() {
        if (!this.a.ao() && !this.a.av() && !TwitterListFragment.a(this.a)) {
            this.a.ap().a(this.a.az().ad_());
        }
    }
}
