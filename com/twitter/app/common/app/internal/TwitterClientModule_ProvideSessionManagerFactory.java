package com.twitter.app.common.app.internal;

import com.twitter.library.client.bg;
import dagger.internal.c;
import dagger.internal.d;

/* compiled from: Twttr */
public enum TwitterClientModule_ProvideSessionManagerFactory implements c<bg> {
    INSTANCE;

    public bg a() {
        return (bg) d.a(w.a(), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static c<bg> c() {
        return INSTANCE;
    }
}
