package com.twitter.android.communities;

import android.content.Context;
import com.twitter.app.common.app.n;
import dagger.internal.c;
import dagger.internal.d;

/* compiled from: Twttr */
class am implements c<Context> {
    final /* synthetic */ as a;
    final /* synthetic */ al b;
    private final n c;

    am(al alVar, as asVar) {
        this.b = alVar;
        this.a = asVar;
        this.c = as.a(this.a);
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public Context a() {
        return (Context) d.a(this.c.c(), "Cannot return null from a non-@Nullable component method");
    }
}
