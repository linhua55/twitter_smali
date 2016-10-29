package com.twitter.app.common.app.internal;

import cxj;
import dagger.internal.c;
import dagger.internal.d;
import up;
import uq;

/* compiled from: Twttr */
public final class t implements c<uq> {
    static final /* synthetic */ boolean a;
    private final cxj<up> b;

    static {
        a = !t.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public t(cxj<up> cxj_up) {
        if (a || cxj_up != null) {
            this.b = cxj_up;
            return;
        }
        throw new AssertionError();
    }

    public uq a() {
        return (uq) d.a(r.a((up) this.b.b()), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static c<uq> a(cxj<up> cxj_up) {
        return new t(cxj_up);
    }
}
