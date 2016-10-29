package com.twitter.android;

import com.twitter.android.revenue.d;
import com.twitter.library.client.Session;
import defpackage.cfa;

/* compiled from: Twttr */
public class hh extends sf {
    final /* synthetic */ HomeTimelineFragment a;

    protected hh(HomeTimelineFragment homeTimelineFragment) {
        this.a = homeTimelineFragment;
        super(homeTimelineFragment);
    }

    public void a(Session session) {
        super.a(session);
        cfa.a("HomeTimelineFragment", "Active session changed to User ID " + session.g(), "ANDROID-10803");
        this.a.l = new d(HomeTimelineFragment.a(this.a), session.g());
    }
}
