package com.twitter.android.eventtimelines.tv.show;

import com.twitter.app.common.app.n;
import com.twitter.library.client.Session;
import dagger.internal.c;
import dagger.internal.d;

/* compiled from: Twttr */
class j implements c<Session> {
    final /* synthetic */ m a;
    final /* synthetic */ g b;
    private final n c;

    j(g gVar, m mVar) {
        this.b = gVar;
        this.a = mVar;
        this.c = m.a(this.a);
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public Session a() {
        return (Session) d.a(this.c.a(), "Cannot return null from a non-@Nullable component method");
    }
}
