package com.twitter.android;

import com.twitter.library.client.Session;
import com.twitter.library.client.ad;

/* compiled from: Twttr */
class p extends ad {
    final /* synthetic */ ActivityFragment a;

    private p(ActivityFragment activityFragment) {
        this.a = activityFragment;
    }

    public void a(Session session) {
        ActivityFragment.a(this.a, false);
        ActivityFragment.m(this.a).a(ActivityFragment.l(this.a), session.g(), session.e());
        super.a(session);
    }
}
