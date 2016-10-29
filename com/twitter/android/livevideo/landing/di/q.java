package com.twitter.android.livevideo.landing.di;

import com.twitter.app.common.base.n;
import dagger.internal.c;
import dagger.internal.d;

/* compiled from: Twttr */
public final class q implements c<n> {
    static final /* synthetic */ boolean a;
    private final l b;

    static {
        a = !q.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public q(l lVar) {
        if (a || lVar != null) {
            this.b = lVar;
            return;
        }
        throw new AssertionError();
    }

    public n a() {
        return (n) d.a(this.b.b(), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static c<n> a(l lVar) {
        return new q(lVar);
    }
}
