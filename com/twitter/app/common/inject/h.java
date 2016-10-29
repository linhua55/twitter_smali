package com.twitter.app.common.inject;

import android.app.Activity;
import android.view.LayoutInflater;
import cxj;
import dagger.internal.c;
import dagger.internal.d;

/* compiled from: Twttr */
public final class h implements c<LayoutInflater> {
    static final /* synthetic */ boolean a;
    private final cxj<Activity> b;

    static {
        a = !h.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public h(cxj<Activity> cxj_android_app_Activity) {
        if (a || cxj_android_app_Activity != null) {
            this.b = cxj_android_app_Activity;
            return;
        }
        throw new AssertionError();
    }

    public LayoutInflater a() {
        return (LayoutInflater) d.a(e.c((Activity) this.b.b()), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static c<LayoutInflater> a(cxj<Activity> cxj_android_app_Activity) {
        return new h(cxj_android_app_Activity);
    }
}
