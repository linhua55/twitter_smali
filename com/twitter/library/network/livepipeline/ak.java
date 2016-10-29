package com.twitter.library.network.livepipeline;

import android.content.Context;
import com.twitter.library.client.Session;
import java.util.Set;

/* compiled from: Twttr */
class ak extends ah {
    ak(Context context, Session session, ab abVar, long j, Set<String> set) {
        super(context, ak.class.getName(), session, abVar, j, set);
    }

    protected String u() {
        return "live_pipeline/unsubscribe";
    }

    public String e() {
        return "lp::unsubscribe:";
    }
}
