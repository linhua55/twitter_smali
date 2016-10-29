package com.twitter.android.eventtimelines.tv.show;

import android.content.Context;
import com.twitter.app.common.app.n;
import dagger.internal.c;
import dagger.internal.d;

/* compiled from: Twttr */
class k implements c<Context> {
    final /* synthetic */ m a;
    final /* synthetic */ g b;
    private final n c;

    k(g gVar, m mVar) {
        this.b = gVar;
        this.a = mVar;
        this.c = m.a(this.a);
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public Context a() {
        return (Context) d.a(this.c.c(), "Cannot return null from a non-@Nullable component method");
    }
}
