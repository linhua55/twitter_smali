package com.twitter.android.livevideo.landing.di;

import com.twitter.app.common.app.n;
import com.twitter.platform.t;
import dagger.internal.c;
import dagger.internal.d;

/* compiled from: Twttr */
class i implements c<t> {
    final /* synthetic */ j a;
    final /* synthetic */ f b;
    private final n c;

    i(f fVar, j jVar) {
        this.b = fVar;
        this.a = jVar;
        this.c = this.a.b;
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public t a() {
        return (t) d.a(this.c.l(), "Cannot return null from a non-@Nullable component method");
    }
}
