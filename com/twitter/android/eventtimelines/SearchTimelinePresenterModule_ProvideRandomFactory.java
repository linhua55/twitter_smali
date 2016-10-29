package com.twitter.android.eventtimelines;

import dagger.internal.c;
import dagger.internal.d;
import java.util.Random;

/* compiled from: Twttr */
public enum SearchTimelinePresenterModule_ProvideRandomFactory implements c<Random> {
    INSTANCE;

    public Random a() {
        return (Random) d.a(r.a(), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static c<Random> c() {
        return INSTANCE;
    }
}
