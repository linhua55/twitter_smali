package com.twitter.app.common.app.internal;

import cxj;
import dagger.internal.c;
import dagger.internal.d;

/* compiled from: Twttr */
public final class f implements c<com.twitter.app.common.util.f> {
    static final /* synthetic */ boolean a;
    private final cxj<com.twitter.app.common.util.c> b;

    static {
        a = !f.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public f(cxj<com.twitter.app.common.util.c> cxj_com_twitter_app_common_util_c) {
        if (a || cxj_com_twitter_app_common_util_c != null) {
            this.b = cxj_com_twitter_app_common_util_c;
            return;
        }
        throw new AssertionError();
    }

    public com.twitter.app.common.util.f a() {
        return (com.twitter.app.common.util.f) d.a(a.a((com.twitter.app.common.util.c) this.b.b()), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static c<com.twitter.app.common.util.f> a(cxj<com.twitter.app.common.util.c> cxj_com_twitter_app_common_util_c) {
        return new f(cxj_com_twitter_app_common_util_c);
    }
}
