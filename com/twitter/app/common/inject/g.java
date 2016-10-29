package com.twitter.app.common.inject;

import android.app.Activity;
import com.twitter.app.common.base.BaseFragmentActivity;
import cxj;
import dagger.internal.c;
import dagger.internal.d;

/* compiled from: Twttr */
public final class g implements c<BaseFragmentActivity> {
    static final /* synthetic */ boolean a;
    private final cxj<Activity> b;

    static {
        a = !g.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public g(cxj<Activity> cxj_android_app_Activity) {
        if (a || cxj_android_app_Activity != null) {
            this.b = cxj_android_app_Activity;
            return;
        }
        throw new AssertionError();
    }

    public BaseFragmentActivity a() {
        return (BaseFragmentActivity) d.a(e.b((Activity) this.b.b()), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static c<BaseFragmentActivity> a(cxj<Activity> cxj_android_app_Activity) {
        return new g(cxj_android_app_Activity);
    }
}
