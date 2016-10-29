package com.twitter.app.common.inject;

import dagger.internal.c;
import dagger.internal.d;

/* compiled from: Twttr */
public final class k implements c<t> {
    static final /* synthetic */ boolean a;
    private final e b;

    static {
        a = !k.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public k(e eVar) {
        if (a || eVar != null) {
            this.b = eVar;
            return;
        }
        throw new AssertionError();
    }

    public t a() {
        return (t) d.a(this.b.g(), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static c<t> a(e eVar) {
        return new k(eVar);
    }
}
