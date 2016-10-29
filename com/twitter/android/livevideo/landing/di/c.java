package com.twitter.android.livevideo.landing.di;

import android.content.Context;
import com.twitter.app.common.app.n;
import dagger.internal.d;

/* compiled from: Twttr */
class c implements dagger.internal.c<Context> {
    final /* synthetic */ e a;
    final /* synthetic */ a b;
    private final n c;

    c(a aVar, e eVar) {
        this.b = aVar;
        this.a = eVar;
        this.c = e.b(this.a);
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public Context a() {
        return (Context) d.a(this.c.c(), "Cannot return null from a non-@Nullable component method");
    }
}
