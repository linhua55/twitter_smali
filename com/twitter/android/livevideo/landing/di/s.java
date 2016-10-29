package com.twitter.android.livevideo.landing.di;

import ape;
import com.twitter.android.composer.aw;
import dagger.internal.c;
import dagger.internal.d;

/* compiled from: Twttr */
public final class s implements c<ape<aw>> {
    static final /* synthetic */ boolean a;
    private final l b;

    static {
        a = !s.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public s(l lVar) {
        if (a || lVar != null) {
            this.b = lVar;
            return;
        }
        throw new AssertionError();
    }

    public ape<aw> a() {
        return (ape) d.a(this.b.a(), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static c<ape<aw>> a(l lVar) {
        return new s(lVar);
    }
}
