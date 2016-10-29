package com.twitter.library.api.search;

import android.content.Context;
import com.twitter.library.provider.di;
import com.twitter.library.provider.e;
import com.twitter.library.service.ab;
import com.twitter.library.service.o;
import com.twitter.model.core.TwitterUser;

/* compiled from: Twttr */
public class a extends o {
    private final TwitterUser a;
    private final long[] b;

    public a(Context context, ab abVar, TwitterUser twitterUser) {
        this(context, abVar, twitterUser, null);
    }

    public a(Context context, ab abVar, long[] jArr) {
        this(context, abVar, null, jArr);
    }

    private a(Context context, ab abVar, TwitterUser twitterUser, long[] jArr) {
        super(context, a.class.getName(), abVar);
        this.a = twitterUser;
        this.b = jArr;
    }

    protected void a() {
        di s = s();
        e t = t();
        if (this.a != null) {
            s.a(h().c, this.a, t);
        } else if (this.b != null) {
            s.a(h().c, this.b, t);
        }
        t.a();
    }
}
