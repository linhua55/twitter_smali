package com.twitter.app.common.list;

/* compiled from: Twttr */
class e implements s {
    final /* synthetic */ k a;
    final /* synthetic */ TwitterListFragment b;

    e(TwitterListFragment twitterListFragment, k kVar) {
        this.b = twitterListFragment;
        this.a = kVar;
    }

    public void a(int i, int i2) {
        TwitterListFragment.a(this.b, i - this.a.a.getHeaderViewsCount());
    }
}
