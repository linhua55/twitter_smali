package com.twitter.android.eventtimelines.tv.show;

import dagger.internal.c;
import dagger.internal.d;
import java.util.Locale;

/* compiled from: Twttr */
public enum TvShowPresenterModule_ProvideLocaleFactory implements c<Locale> {
    INSTANCE;

    public Locale a() {
        return (Locale) d.a(aj.b(), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static c<Locale> c() {
        return INSTANCE;
    }
}
