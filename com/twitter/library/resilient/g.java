package com.twitter.library.resilient;

import android.content.Context;
import com.twitter.library.client.Session;
import com.twitter.library.client.ad;

/* compiled from: Twttr */
class g extends ad {
    private final Context a;

    g(Context context) {
        this.a = context;
    }

    public void a(Session session, boolean z) {
        e.a(this.a).a(this.a, session.g());
    }
}
