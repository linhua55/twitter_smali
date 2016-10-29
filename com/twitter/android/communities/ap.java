package com.twitter.android.communities;

import com.twitter.app.common.app.n;
import com.twitter.library.provider.di;
import dagger.internal.c;
import dagger.internal.d;

/* compiled from: Twttr */
class ap implements c<di> {
    final /* synthetic */ as a;
    final /* synthetic */ al b;
    private final n c;

    ap(al alVar, as asVar) {
        this.b = alVar;
        this.a = asVar;
        this.c = as.a(this.a);
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public di a() {
        return (di) d.a(this.c.i(), "Cannot return null from a non-@Nullable component method");
    }
}
