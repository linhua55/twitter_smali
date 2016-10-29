package com.twitter.app.common.app.internal;

import android.app.Application;
import cxj;
import dagger.internal.d;

/* compiled from: Twttr */
public final class c implements dagger.internal.c<com.twitter.app.common.util.c> {
    static final /* synthetic */ boolean a;
    private final cxj<Application> b;

    static {
        a = !c.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public c(cxj<Application> cxj_android_app_Application) {
        if (a || cxj_android_app_Application != null) {
            this.b = cxj_android_app_Application;
            return;
        }
        throw new AssertionError();
    }

    public com.twitter.app.common.util.c a() {
        return (com.twitter.app.common.util.c) d.a(a.b((Application) this.b.b()), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static dagger.internal.c<com.twitter.app.common.util.c> a(cxj<Application> cxj_android_app_Application) {
        return new c(cxj_android_app_Application);
    }
}
