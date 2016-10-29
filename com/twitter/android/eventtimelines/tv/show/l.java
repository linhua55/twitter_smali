package com.twitter.android.eventtimelines.tv.show;

import com.twitter.app.common.app.n;
import com.twitter.library.client.az;
import dagger.internal.c;
import dagger.internal.d;

/* compiled from: Twttr */
class l implements c<az> {
    final /* synthetic */ m a;
    final /* synthetic */ g b;
    private final n c;

    l(g gVar, m mVar) {
        this.b = gVar;
        this.a = mVar;
        this.c = m.a(this.a);
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public az a() {
        return (az) d.a(this.c.o(), "Cannot return null from a non-@Nullable component method");
    }
}
