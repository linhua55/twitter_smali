package com.twitter.android.livevideo.landing.di;

import abn;
import dagger.internal.c;
import dagger.internal.d;

/* compiled from: Twttr */
public enum LiveVideoTimelineModule_ProvidePeriodicEmitterFactory implements c<abn> {
    INSTANCE;

    public abn a() {
        return (abn) d.a(v.a(), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static c<abn> c() {
        return INSTANCE;
    }
}
