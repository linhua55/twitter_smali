package com.twitter.library.api.timeline;

import android.content.Context;
import com.twitter.library.client.Session;
import com.twitter.library.service.e;

/* compiled from: Twttr */
public class m extends ag {
    public m(Context context, Session session, long j) {
        super(context, m.class.getName(), session, j, 8, -1, "unspecified");
    }

    protected e h() {
        return K().a("favorites", "list").a(TtmlNode.ATTR_ID, this.a);
    }
}
