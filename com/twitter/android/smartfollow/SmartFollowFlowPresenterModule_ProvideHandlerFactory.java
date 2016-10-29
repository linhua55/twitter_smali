package com.twitter.android.smartfollow;

import android.os.Handler;
import dagger.internal.c;
import dagger.internal.d;

/* compiled from: Twttr */
public enum SmartFollowFlowPresenterModule_ProvideHandlerFactory implements c<Handler> {
    INSTANCE;

    public Handler a() {
        return (Handler) d.a(o.a(), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static c<Handler> c() {
        return INSTANCE;
    }
}
