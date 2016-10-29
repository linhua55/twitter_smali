package com.twitter.android.communities;

import com.twitter.library.provider.di;
import com.twitter.platform.t;
import cxj;
import dagger.internal.c;

/* compiled from: Twttr */
public final class m implements c<l> {
    static final /* synthetic */ boolean a;
    private final cxj<di> b;
    private final cxj<t> c;
    private final cxj<d> d;

    static {
        a = !m.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public m(cxj<di> cxj_com_twitter_library_provider_di, cxj<t> cxj_com_twitter_platform_t, cxj<d> cxj_com_twitter_android_communities_d) {
        if (a || cxj_com_twitter_library_provider_di != null) {
            this.b = cxj_com_twitter_library_provider_di;
            if (a || cxj_com_twitter_platform_t != null) {
                this.c = cxj_com_twitter_platform_t;
                if (a || cxj_com_twitter_android_communities_d != null) {
                    this.d = cxj_com_twitter_android_communities_d;
                    return;
                }
                throw new AssertionError();
            }
            throw new AssertionError();
        }
        throw new AssertionError();
    }

    public l a() {
        return new l((di) this.b.b(), (t) this.c.b(), (d) this.d.b());
    }

    public static c<l> a(cxj<di> cxj_com_twitter_library_provider_di, cxj<t> cxj_com_twitter_platform_t, cxj<d> cxj_com_twitter_android_communities_d) {
        return new m(cxj_com_twitter_library_provider_di, cxj_com_twitter_platform_t, cxj_com_twitter_android_communities_d);
    }
}
