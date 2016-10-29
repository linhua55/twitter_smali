package com.twitter.app.common.app.internal;

import aok;
import dagger.internal.c;

/* compiled from: Twttr */
public final class o implements c<aok> {
    static final /* synthetic */ boolean a;
    private final n b;

    static {
        a = !o.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public o(n nVar) {
        if (a || nVar != null) {
            this.b = nVar;
            return;
        }
        throw new AssertionError();
    }

    public aok a() {
        return this.b.b();
    }

    public static c<aok> a(n nVar) {
        return new o(nVar);
    }
}
