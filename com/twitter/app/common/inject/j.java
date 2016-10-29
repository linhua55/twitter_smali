package com.twitter.app.common.inject;

import android.app.Activity;
import android.content.res.Resources;
import cxj;
import dagger.internal.c;
import dagger.internal.d;

/* compiled from: Twttr */
public final class j implements c<Resources> {
    static final /* synthetic */ boolean a;
    private final cxj<Activity> b;

    static {
        a = !j.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public j(cxj<Activity> cxj_android_app_Activity) {
        if (a || cxj_android_app_Activity != null) {
            this.b = cxj_android_app_Activity;
            return;
        }
        throw new AssertionError();
    }

    public Resources a() {
        return (Resources) d.a(e.d((Activity) this.b.b()), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static c<Resources> a(cxj<Activity> cxj_android_app_Activity) {
        return new j(cxj_android_app_Activity);
    }
}
