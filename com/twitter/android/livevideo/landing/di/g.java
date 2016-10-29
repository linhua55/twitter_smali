package com.twitter.android.livevideo.landing.di;

import com.twitter.app.common.app.n;
import com.twitter.library.client.Session;
import dagger.internal.c;
import dagger.internal.d;

/* compiled from: Twttr */
class g implements c<Session> {
    final /* synthetic */ j a;
    final /* synthetic */ f b;
    private final n c;

    g(f fVar, j jVar) {
        this.b = fVar;
        this.a = jVar;
        this.c = this.a.b;
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public Session a() {
        return (Session) d.a(this.c.a(), "Cannot return null from a non-@Nullable component method");
    }
}
