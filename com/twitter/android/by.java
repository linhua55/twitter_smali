package com.twitter.android;

import com.twitter.app.common.list.TwitterListFragment;
import com.twitter.library.client.Session;
import com.twitter.library.client.ad;

/* compiled from: Twttr */
class by extends ad {
    final /* synthetic */ DMActivity a;

    private by(DMActivity dMActivity) {
        this.a = dMActivity;
    }

    public void a(Session session) {
        if (this.a.d == 1 || this.a.d == 3) {
            TwitterListFragment twitterListFragment = (TwitterListFragment) this.a.getSupportFragmentManager().findFragmentById(2131951923);
            if (twitterListFragment != null) {
                twitterListFragment.g(session.g());
            }
        }
    }
}
