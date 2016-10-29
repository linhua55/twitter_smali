package com.twitter.android.av.watchmode;

import com.twitter.app.common.app.n;
import com.twitter.library.client.Session;
import dagger.internal.d;

/* compiled from: Twttr */
class c implements dagger.internal.c<Session> {
    final /* synthetic */ e a;
    final /* synthetic */ a b;
    private final n c;

    c(a aVar, e eVar) {
        this.b = aVar;
        this.a = eVar;
        this.c = e.b(this.a);
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public Session a() {
        return (Session) d.a(this.c.a(), "Cannot return null from a non-@Nullable component method");
    }
}
