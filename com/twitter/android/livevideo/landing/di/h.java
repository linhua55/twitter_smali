package com.twitter.android.livevideo.landing.di;

import com.twitter.app.common.app.n;
import com.twitter.library.provider.di;
import dagger.internal.c;
import dagger.internal.d;

/* compiled from: Twttr */
class h implements c<di> {
    final /* synthetic */ j a;
    final /* synthetic */ f b;
    private final n c;

    h(f fVar, j jVar) {
        this.b = fVar;
        this.a = jVar;
        this.c = this.a.b;
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public di a() {
        return (di) d.a(this.c.i(), "Cannot return null from a non-@Nullable component method");
    }
}
