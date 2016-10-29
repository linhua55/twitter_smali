package com.twitter.android.eventtimelines;

import dagger.internal.c;

/* compiled from: Twttr */
public final class u implements c<SearchTimelineState> {
    static final /* synthetic */ boolean a;
    private final r b;

    static {
        a = !u.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public u(r rVar) {
        if (a || rVar != null) {
            this.b = rVar;
            return;
        }
        throw new AssertionError();
    }

    public SearchTimelineState a() {
        return this.b.c();
    }

    public static c<SearchTimelineState> a(r rVar) {
        return new u(rVar);
    }
}
