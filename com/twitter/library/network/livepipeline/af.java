package com.twitter.library.network.livepipeline;

import android.content.Context;
import com.twitter.library.client.Session;
import java.util.Set;

/* compiled from: Twttr */
class af extends ah {
    af(Context context, Session session, ab abVar, long j, Set<String> set) {
        super(context, af.class.getName(), session, abVar, j, set);
    }

    protected String u() {
        return "live_pipeline/subscribe";
    }

    public String e() {
        return "lp::subscribe:";
    }
}
