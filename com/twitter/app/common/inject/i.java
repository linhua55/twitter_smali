package com.twitter.app.common.inject;

import android.app.Activity;
import com.twitter.app.common.util.t;
import cxj;
import dagger.internal.c;
import dagger.internal.d;

/* compiled from: Twttr */
public final class i implements c<t> {
    static final /* synthetic */ boolean a;
    private final cxj<Activity> b;

    static {
        a = !i.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public i(cxj<Activity> cxj_android_app_Activity) {
        if (a || cxj_android_app_Activity != null) {
            this.b = cxj_android_app_Activity;
            return;
        }
        throw new AssertionError();
    }

    public t a() {
        return (t) d.a(e.a((Activity) this.b.b()), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static c<t> a(cxj<Activity> cxj_android_app_Activity) {
        return new i(cxj_android_app_Activity);
    }
}
