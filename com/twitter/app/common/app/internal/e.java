package com.twitter.app.common.app.internal;

import com.twitter.config.AppConfig;
import dagger.internal.c;
import dagger.internal.d;

/* compiled from: Twttr */
public final class e implements c<AppConfig> {
    static final /* synthetic */ boolean a;
    private final a b;

    static {
        a = !e.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public e(a aVar) {
        if (a || aVar != null) {
            this.b = aVar;
            return;
        }
        throw new AssertionError();
    }

    public AppConfig a() {
        return (AppConfig) d.a(this.b.b(), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static c<AppConfig> a(a aVar) {
        return new e(aVar);
    }
}
