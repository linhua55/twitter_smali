package com.twitter.app.common.app.internal;

import com.twitter.app.common.util.n;
import cxj;
import dagger.internal.c;
import dagger.internal.d;

/* compiled from: Twttr */
public final class j implements c<n> {
    static final /* synthetic */ boolean a;
    private final cxj<com.twitter.app.common.util.c> b;

    static {
        a = !j.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public j(cxj<com.twitter.app.common.util.c> cxj_com_twitter_app_common_util_c) {
        if (a || cxj_com_twitter_app_common_util_c != null) {
            this.b = cxj_com_twitter_app_common_util_c;
            return;
        }
        throw new AssertionError();
    }

    public n a() {
        return (n) d.a(a.b((com.twitter.app.common.util.c) this.b.b()), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static c<n> a(cxj<com.twitter.app.common.util.c> cxj_com_twitter_app_common_util_c) {
        return new j(cxj_com_twitter_app_common_util_c);
    }
}
