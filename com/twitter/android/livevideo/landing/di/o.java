package com.twitter.android.livevideo.landing.di;

import com.twitter.android.livevideo.landing.a;
import dagger.internal.c;
import dagger.internal.d;

/* compiled from: Twttr */
public final class o implements c<a> {
    static final /* synthetic */ boolean a;
    private final l b;

    static {
        a = !o.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public o(l lVar) {
        if (a || lVar != null) {
            this.b = lVar;
            return;
        }
        throw new AssertionError();
    }

    public a a() {
        return (a) d.a(this.b.d(), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static c<a> a(l lVar) {
        return new o(lVar);
    }
}
