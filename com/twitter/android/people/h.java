package com.twitter.android.people;

import com.twitter.app.common.app.n;
import com.twitter.library.client.az;
import dagger.internal.c;
import dagger.internal.d;

/* compiled from: Twttr */
class h implements c<az> {
    final /* synthetic */ i a;
    final /* synthetic */ d b;
    private final n c;

    h(d dVar, i iVar) {
        this.b = dVar;
        this.a = iVar;
        this.c = this.a.b;
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public az a() {
        return (az) d.a(this.c.o(), "Cannot return null from a non-@Nullable component method");
    }
}
