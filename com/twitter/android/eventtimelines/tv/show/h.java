package com.twitter.android.eventtimelines.tv.show;

import com.twitter.app.common.app.n;
import com.twitter.library.provider.di;
import dagger.internal.c;
import dagger.internal.d;

/* compiled from: Twttr */
class h implements c<di> {
    final /* synthetic */ m a;
    final /* synthetic */ g b;
    private final n c;

    h(g gVar, m mVar) {
        this.b = gVar;
        this.a = mVar;
        this.c = m.a(this.a);
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public di a() {
        return (di) d.a(this.c.i(), "Cannot return null from a non-@Nullable component method");
    }
}
