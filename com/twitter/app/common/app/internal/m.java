package com.twitter.app.common.app.internal;

import com.twitter.platform.PlatformContext;
import com.twitter.platform.t;
import cxj;
import dagger.internal.c;
import dagger.internal.d;

/* compiled from: Twttr */
public final class m implements c<t> {
    static final /* synthetic */ boolean a;
    private final cxj<PlatformContext> b;

    static {
        a = !m.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public m(cxj<PlatformContext> cxj_com_twitter_platform_PlatformContext) {
        if (a || cxj_com_twitter_platform_PlatformContext != null) {
            this.b = cxj_com_twitter_platform_PlatformContext;
            return;
        }
        throw new AssertionError();
    }

    public t a() {
        return (t) d.a(a.a((PlatformContext) this.b.b()), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static c<t> a(cxj<PlatformContext> cxj_com_twitter_platform_PlatformContext) {
        return new m(cxj_com_twitter_platform_PlatformContext);
    }
}
