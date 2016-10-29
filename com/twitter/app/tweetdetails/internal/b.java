package com.twitter.app.tweetdetails.internal;

import com.twitter.android.nn;
import com.twitter.app.common.base.BaseFragmentActivity;
import cxj;
import dagger.internal.c;
import dagger.internal.d;
import defpackage.apf;

/* compiled from: Twttr */
public final class b implements c<apf<nn>> {
    static final /* synthetic */ boolean a;
    private final cxj<BaseFragmentActivity> b;

    static {
        a = !b.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public b(cxj<BaseFragmentActivity> cxj_com_twitter_app_common_base_BaseFragmentActivity) {
        if (a || cxj_com_twitter_app_common_base_BaseFragmentActivity != null) {
            this.b = cxj_com_twitter_app_common_base_BaseFragmentActivity;
            return;
        }
        throw new AssertionError();
    }

    public apf<nn> a() {
        return (apf) d.a(a.a((BaseFragmentActivity) this.b.b()), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static c<apf<nn>> a(cxj<BaseFragmentActivity> cxj_com_twitter_app_common_base_BaseFragmentActivity) {
        return new b(cxj_com_twitter_app_common_base_BaseFragmentActivity);
    }
}
