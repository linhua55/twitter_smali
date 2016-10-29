package com.twitter.android.eventtimelines.tv.show;

import android.content.Context;
import com.twitter.library.client.Session;
import com.twitter.library.client.az;
import com.twitter.model.eventtimelines.TvShow;
import defpackage.bld;
import rx.o;

/* compiled from: Twttr */
public class an implements am {
    private final Context a;
    private final Session b;
    private final az c;

    public an(Context context, Session session, az azVar) {
        this.a = context;
        this.b = session;
        this.c = azVar;
    }

    public o<TvShow> a(long j) {
        bld bld = new bld(this.a, this.b, j);
        bld.a(true);
        this.c.a(bld, null);
        return bld.g();
    }
}
