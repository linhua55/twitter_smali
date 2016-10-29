package com.twitter.app.common.app.internal;

import aog;
import dagger.internal.c;
import dagger.internal.d;

/* compiled from: Twttr */
public final class p implements c<aog> {
    static final /* synthetic */ boolean a;
    private final n b;

    static {
        a = !p.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public p(n nVar) {
        if (a || nVar != null) {
            this.b = nVar;
            return;
        }
        throw new AssertionError();
    }

    public aog a() {
        return (aog) d.a(this.b.a(), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static c<aog> a(n nVar) {
        return new p(nVar);
    }
}
