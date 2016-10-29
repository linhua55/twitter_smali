package com.twitter.android.communities;

import com.twitter.platform.t;
import cxj;
import dagger.internal.c;

/* compiled from: Twttr */
public final class f implements c<e> {
    static final /* synthetic */ boolean a;
    private final cxj<t> b;

    static {
        a = !f.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public f(cxj<t> cxj_com_twitter_platform_t) {
        if (a || cxj_com_twitter_platform_t != null) {
            this.b = cxj_com_twitter_platform_t;
            return;
        }
        throw new AssertionError();
    }

    public e a() {
        return new e((t) this.b.b());
    }

    public static c<e> a(cxj<t> cxj_com_twitter_platform_t) {
        return new f(cxj_com_twitter_platform_t);
    }
}
