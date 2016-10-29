package com.twitter.android.people;

import android.content.Context;
import com.twitter.app.common.app.n;
import dagger.internal.c;
import dagger.internal.d;

/* compiled from: Twttr */
class e implements c<Context> {
    final /* synthetic */ i a;
    final /* synthetic */ d b;
    private final n c;

    e(d dVar, i iVar) {
        this.b = dVar;
        this.a = iVar;
        this.c = this.a.b;
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public Context a() {
        return (Context) d.a(this.c.c(), "Cannot return null from a non-@Nullable component method");
    }
}
