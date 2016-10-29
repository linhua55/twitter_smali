package com.twitter.app.common.app.internal;

import android.app.Application;
import dagger.internal.c;
import dagger.internal.d;

/* compiled from: Twttr */
public final class g implements c<Application> {
    static final /* synthetic */ boolean a;
    private final a b;

    static {
        a = !g.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public g(a aVar) {
        if (a || aVar != null) {
            this.b = aVar;
            return;
        }
        throw new AssertionError();
    }

    public Application a() {
        return (Application) d.a(this.b.a(), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static c<Application> a(a aVar) {
        return new g(aVar);
    }
}
