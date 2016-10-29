package com.twitter.android.communities;

import dagger.internal.c;
import dagger.internal.d;

/* compiled from: Twttr */
public final class u implements c<c> {
    static final /* synthetic */ boolean a;
    private final t b;

    static {
        a = !u.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public u(t tVar) {
        if (a || tVar != null) {
            this.b = tVar;
            return;
        }
        throw new AssertionError();
    }

    public c a() {
        return (c) d.a(this.b.a(), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static c<c> a(t tVar) {
        return new u(tVar);
    }
}
