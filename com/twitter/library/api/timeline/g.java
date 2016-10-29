package com.twitter.library.api.timeline;

import android.content.Context;
import com.twitter.library.client.Session;
import com.twitter.library.provider.di;
import com.twitter.library.provider.e;
import com.twitter.library.service.aa;
import com.twitter.library.service.x;

/* compiled from: Twttr */
public class g extends x {
    private final long a;

    public g(Context context, Session session, long j) {
        super(context, g.class.getName(), session);
        this.a = j;
    }

    protected void a_(aa aaVar) {
        di S = S();
        e T = T();
        S.f(this.a, T);
        T.a();
    }
}
