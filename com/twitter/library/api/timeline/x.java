package com.twitter.library.api.timeline;

import android.content.Context;
import com.twitter.library.client.Session;
import com.twitter.library.service.e;

/* compiled from: Twttr */
public class x extends ag {
    public x(Context context, Session session, long j) {
        super(context, x.class.getName(), session, j, 2, -1, "unspecified");
    }

    protected e h() {
        return K().a("statuses", "media_timeline").a("user_id", this.a);
    }
}
