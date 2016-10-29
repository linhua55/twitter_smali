package com.twitter.android.av.watchmode;

import android.content.Context;
import com.twitter.app.common.app.n;
import dagger.internal.c;
import dagger.internal.d;

/* compiled from: Twttr */
class b implements c<Context> {
    final /* synthetic */ e a;
    final /* synthetic */ a b;
    private final n c;

    b(a aVar, e eVar) {
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
