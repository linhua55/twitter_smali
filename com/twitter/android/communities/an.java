package com.twitter.android.communities;

import com.twitter.app.common.app.n;
import com.twitter.library.client.Session;
import dagger.internal.c;
import dagger.internal.d;

/* compiled from: Twttr */
class an implements c<Session> {
    final /* synthetic */ as a;
    final /* synthetic */ al b;
    private final n c;

    an(al alVar, as asVar) {
        this.b = alVar;
        this.a = asVar;
        this.c = as.a(this.a);
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public Session a() {
        return (Session) d.a(this.c.a(), "Cannot return null from a non-@Nullable component method");
    }
}
