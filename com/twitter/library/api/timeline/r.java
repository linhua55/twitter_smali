package com.twitter.library.api.timeline;

import android.content.Context;
import com.twitter.library.client.Session;
import com.twitter.library.service.e;

/* compiled from: Twttr */
public class r extends ag {
    public r(Context context, Session session, long j) {
        super(context, x.class.getName(), session, j, 12, -1, "unspecified");
    }

    protected e h() {
        return K().a("statuses", "mentions_timeline").a("filters", "following");
    }
}
