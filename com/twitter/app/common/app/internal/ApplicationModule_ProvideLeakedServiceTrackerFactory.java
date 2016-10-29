package com.twitter.app.common.app.internal;

import com.twitter.app.common.util.r;
import dagger.internal.c;
import dagger.internal.d;

/* compiled from: Twttr */
public enum ApplicationModule_ProvideLeakedServiceTrackerFactory implements c<r> {
    INSTANCE;

    public r a() {
        return (r) d.a(a.c(), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static c<r> c() {
        return INSTANCE;
    }
}
