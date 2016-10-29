package com.twitter.android.communities.header;

import com.twitter.android.communities.ak;
import com.twitter.android.communities.g;
import cxj;
import dagger.internal.c;

/* compiled from: Twttr */
public final class f implements c<b> {
    static final /* synthetic */ boolean a;
    private final cxj<g> b;
    private final cxj<ak> c;
    private final cxj<com.twitter.android.communities.c> d;

    static {
        a = !f.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public f(cxj<g> cxj_com_twitter_android_communities_g, cxj<ak> cxj_com_twitter_android_communities_ak, cxj<com.twitter.android.communities.c> cxj_com_twitter_android_communities_c) {
        if (a || cxj_com_twitter_android_communities_g != null) {
            this.b = cxj_com_twitter_android_communities_g;
            if (a || cxj_com_twitter_android_communities_ak != null) {
                this.c = cxj_com_twitter_android_communities_ak;
                if (a || cxj_com_twitter_android_communities_c != null) {
                    this.d = cxj_com_twitter_android_communities_c;
                    return;
                }
                throw new AssertionError();
            }
            throw new AssertionError();
        }
        throw new AssertionError();
    }

    public b a() {
        return new b((g) this.b.b(), (ak) this.c.b(), (com.twitter.android.communities.c) this.d.b());
    }

    public static c<b> a(cxj<g> cxj_com_twitter_android_communities_g, cxj<ak> cxj_com_twitter_android_communities_ak, cxj<com.twitter.android.communities.c> cxj_com_twitter_android_communities_c) {
        return new f(cxj_com_twitter_android_communities_g, cxj_com_twitter_android_communities_ak, cxj_com_twitter_android_communities_c);
    }
}
