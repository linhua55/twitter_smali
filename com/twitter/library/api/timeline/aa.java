package com.twitter.library.api.timeline;

import android.content.Context;
import com.twitter.library.client.Session;
import com.twitter.library.service.ab;
import com.twitter.library.service.e;

/* compiled from: Twttr */
public class aa extends ab {
    private final boolean a;

    public aa(Context context, Session session, long j, boolean z, int i) {
        super(context, aa.class.getName(), new ab(session), j, i);
        this.a = z;
    }

    protected e h() {
        e h = super.h();
        h.a("timeline", "user").a(TtmlNode.ATTR_ID, C()).a("include_my_retweet", true).a("earned", true).a("include_tweet_replies", true).a("exclude_pinned_tweets", true);
        if (this.a) {
            h.a("pc", true);
        }
        return h;
    }

    protected int g() {
        return 1;
    }
}
