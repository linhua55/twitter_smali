package com.twitter.android.communities;

import com.twitter.app.common.app.n;
import com.twitter.platform.t;
import dagger.internal.c;
import dagger.internal.d;

/* compiled from: Twttr */
class aq implements c<t> {
    final /* synthetic */ as a;
    final /* synthetic */ al b;
    private final n c;

    aq(al alVar, as asVar) {
        this.b = alVar;
        this.a = asVar;
        this.c = as.a(this.a);
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public t a() {
        return (t) d.a(this.c.l(), "Cannot return null from a non-@Nullable component method");
    }
}
