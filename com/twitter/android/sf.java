package com.twitter.android;

import com.twitter.library.client.Session;
import com.twitter.library.client.ad;

/* compiled from: Twttr */
public class sf extends ad {
    final /* synthetic */ TimelineFragment b;

    protected sf(TimelineFragment timelineFragment) {
        this.b = timelineFragment;
    }

    public void a(Session session) {
        super.a(session);
        if (TimelineFragment.c(this.b) != null) {
            TimelineFragment.c(this.b).a(session, this.b.L());
        }
    }
}
