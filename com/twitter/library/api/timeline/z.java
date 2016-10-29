package com.twitter.library.api.timeline;

import android.content.Context;
import com.twitter.library.client.Session;
import com.twitter.library.provider.e;
import com.twitter.library.service.o;

/* compiled from: Twttr */
public class z extends o {
    private final long a;
    private final long b;

    public z(Context context, Session session, long j, long j2) {
        super(context, z.class.getName(), session);
        this.b = j;
        this.a = j2;
    }

    protected void a() {
        e t = t();
        s().e(this.b, this.a, t);
        t.a();
    }
}
