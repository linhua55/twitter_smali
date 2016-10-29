package com.twitter.app.common.app.internal;

import android.app.Application;
import android.content.Context;
import cxj;
import dagger.internal.c;
import dagger.internal.d;

/* compiled from: Twttr */
public final class i implements c<Context> {
    static final /* synthetic */ boolean a;
    private final cxj<Application> b;

    static {
        a = !i.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public i(cxj<Application> cxj_android_app_Application) {
        if (a || cxj_android_app_Application != null) {
            this.b = cxj_android_app_Application;
            return;
        }
        throw new AssertionError();
    }

    public Context a() {
        return (Context) d.a(a.a((Application) this.b.b()), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static c<Context> a(cxj<Application> cxj_android_app_Application) {
        return new i(cxj_android_app_Application);
    }
}
