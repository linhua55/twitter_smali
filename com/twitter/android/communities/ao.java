package com.twitter.android.communities;

import com.twitter.app.common.app.n;
import com.twitter.library.client.az;
import dagger.internal.c;
import dagger.internal.d;

/* compiled from: Twttr */
class ao implements c<az> {
    final /* synthetic */ as a;
    final /* synthetic */ al b;
    private final n c;

    ao(al alVar, as asVar) {
        this.b = alVar;
        this.a = asVar;
        this.c = as.a(this.a);
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public az a() {
        return (az) d.a(this.c.o(), "Cannot return null from a non-@Nullable component method");
    }
}
