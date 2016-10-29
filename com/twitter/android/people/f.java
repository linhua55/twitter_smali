package com.twitter.android.people;

import com.twitter.app.common.app.n;
import com.twitter.library.client.Session;
import dagger.internal.c;
import dagger.internal.d;

/* compiled from: Twttr */
class f implements c<Session> {
    final /* synthetic */ i a;
    final /* synthetic */ d b;
    private final n c;

    f(d dVar, i iVar) {
        this.b = dVar;
        this.a = iVar;
        this.c = this.a.b;
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public Session a() {
        return (Session) d.a(this.c.a(), "Cannot return null from a non-@Nullable component method");
    }
}
