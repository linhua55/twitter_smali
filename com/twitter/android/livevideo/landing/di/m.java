package com.twitter.android.livevideo.landing.di;

import abt;
import dagger.internal.c;
import dagger.internal.d;

/* compiled from: Twttr */
public final class m implements c<abt> {
    static final /* synthetic */ boolean a;
    private final l b;

    static {
        a = !m.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public m(l lVar) {
        if (a || lVar != null) {
            this.b = lVar;
            return;
        }
        throw new AssertionError();
    }

    public abt a() {
        return (abt) d.a(this.b.c(), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static c<abt> a(l lVar) {
        return new m(lVar);
    }
}
