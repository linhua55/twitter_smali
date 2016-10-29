package com.twitter.android.livevideo.landing.di;

import com.twitter.android.timeline.bj;
import dagger.internal.c;
import dagger.internal.d;

/* compiled from: Twttr */
public final class x implements c<bj> {
    static final /* synthetic */ boolean a;
    private final v b;

    static {
        a = !x.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public x(v vVar) {
        if (a || vVar != null) {
            this.b = vVar;
            return;
        }
        throw new AssertionError();
    }

    public bj a() {
        return (bj) d.a(this.b.d(), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static c<bj> a(v vVar) {
        return new x(vVar);
    }
}
