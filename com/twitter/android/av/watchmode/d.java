package com.twitter.android.av.watchmode;

import com.twitter.app.common.app.n;
import com.twitter.library.provider.di;
import dagger.internal.c;

/* compiled from: Twttr */
class d implements c<di> {
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

    public di a() {
        return (di) dagger.internal.d.a(this.c.i(), "Cannot return null from a non-@Nullable component method");
    }
}
