package com.twitter.android.eventtimelines;

import dagger.internal.c;
import dagger.internal.d;

/* compiled from: Twttr */
public final class t implements c<l> {
    static final /* synthetic */ boolean a;
    private final r b;

    static {
        a = !t.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public t(r rVar) {
        if (a || rVar != null) {
            this.b = rVar;
            return;
        }
        throw new AssertionError();
    }

    public l a() {
        return (l) d.a(this.b.b(), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static c<l> a(r rVar) {
        return new t(rVar);
    }
}
