package com.twitter.android.av.monetization;

import com.twitter.app.common.app.n;
import dagger.internal.c;
import dagger.internal.d;
import uq;

/* compiled from: Twttr */
class b implements c<uq> {
    final /* synthetic */ c a;
    final /* synthetic */ a b;
    private final n c;

    b(a aVar, c cVar) {
        this.b = aVar;
        this.a = cVar;
        this.c = c.b(this.a);
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public uq a() {
        return (uq) d.a(this.c.r(), "Cannot return null from a non-@Nullable component method");
    }
}
