package com.twitter.android.eventtimelines;

import android.app.Application;
import android.content.res.Resources;
import cxj;
import dagger.internal.c;
import dagger.internal.d;

/* compiled from: Twttr */
public final class s implements c<Resources> {
    static final /* synthetic */ boolean a;
    private final cxj<Application> b;

    static {
        a = !s.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public s(cxj<Application> cxj_android_app_Application) {
        if (a || cxj_android_app_Application != null) {
            this.b = cxj_android_app_Application;
            return;
        }
        throw new AssertionError();
    }

    public Resources a() {
        return (Resources) d.a(r.a((Application) this.b.b()), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static c<Resources> a(cxj<Application> cxj_android_app_Application) {
        return new s(cxj_android_app_Application);
    }
}
