package com.twitter.android.livevideo.landing.di;

import com.twitter.app.common.app.n;
import com.twitter.library.client.Session;
import dagger.internal.c;
import dagger.internal.d;

/* compiled from: Twttr */
class b implements c<Session> {
    final /* synthetic */ e a;
    final /* synthetic */ a b;
    private final n c;

    b(a aVar, e eVar) {
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
