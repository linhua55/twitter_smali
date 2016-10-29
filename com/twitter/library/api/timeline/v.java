package com.twitter.library.api.timeline;

import android.content.Context;
import android.support.annotation.VisibleForTesting;
import com.twitter.library.client.Session;
import com.twitter.library.provider.di;
import com.twitter.library.provider.e;
import com.twitter.library.service.o;
import java.util.Collection;

/* compiled from: Twttr */
public class v extends o {
    final Collection<Long> a;
    private final int b;

    public v(Context context, Session session, Collection<Long> collection, int i) {
        super(context, v.class.getName(), session);
        this.a = collection;
        this.b = i;
    }

    @VisibleForTesting
    e b() {
        return t();
    }

    @VisibleForTesting
    di e() {
        return s();
    }

    protected void a() {
        e b = b();
        e().a(this.a, b, this.b);
        b.a();
    }
}
