package com.twitter.android.livevideo.landing.di;

import com.twitter.app.common.app.n;
import com.twitter.library.client.az;
import dagger.internal.c;

/* compiled from: Twttr */
class d implements c<az> {
    final /* synthetic */ e a;
    final /* synthetic */ a b;
    private final n c;

    d(a aVar, e eVar) {
        this.b = aVar;
        this.a = eVar;
        this.c = e.b(this.a);
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public az a() {
        return (az) dagger.internal.d.a(this.c.o(), "Cannot return null from a non-@Nullable component method");
    }
}
