package com.twitter.android.smartfollow.interestsearch;

import android.content.Context;
import com.twitter.app.common.app.n;
import dagger.internal.c;
import dagger.internal.d;

/* compiled from: Twttr */
class b implements c<Context> {
    final /* synthetic */ d a;
    final /* synthetic */ a b;
    private final n c;

    b(a aVar, d dVar) {
        this.b = aVar;
        this.a = dVar;
        this.c = this.a.a;
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public Context a() {
        return (Context) d.a(this.c.c(), "Cannot return null from a non-@Nullable component method");
    }
}
