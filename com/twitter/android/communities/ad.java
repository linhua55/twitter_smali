package com.twitter.android.communities;

import cxj;
import dagger.internal.c;

/* compiled from: Twttr */
public final class ad implements c<y> {
    static final /* synthetic */ boolean a;
    private final cxj<af> b;
    private final cxj<k> c;

    static {
        a = !ad.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public ad(cxj<af> cxj_com_twitter_android_communities_af, cxj<k> cxj_com_twitter_android_communities_k) {
        if (a || cxj_com_twitter_android_communities_af != null) {
            this.b = cxj_com_twitter_android_communities_af;
            if (a || cxj_com_twitter_android_communities_k != null) {
                this.c = cxj_com_twitter_android_communities_k;
                return;
            }
            throw new AssertionError();
        }
        throw new AssertionError();
    }

    public y a() {
        return new y((af) this.b.b(), (k) this.c.b());
    }

    public static c<y> a(cxj<af> cxj_com_twitter_android_communities_af, cxj<k> cxj_com_twitter_android_communities_k) {
        return new ad(cxj_com_twitter_android_communities_af, cxj_com_twitter_android_communities_k);
    }
}
