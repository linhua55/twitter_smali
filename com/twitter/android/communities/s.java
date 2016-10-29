package com.twitter.android.communities;

import cxj;
import dagger.internal.c;

/* compiled from: Twttr */
public final class s implements c<p> {
    static final /* synthetic */ boolean a;
    private final cxj<x> b;
    private final cxj<ak> c;
    private final cxj<c> d;

    static {
        a = !s.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public s(cxj<x> cxj_com_twitter_android_communities_x, cxj<ak> cxj_com_twitter_android_communities_ak, cxj<c> cxj_com_twitter_android_communities_c) {
        if (a || cxj_com_twitter_android_communities_x != null) {
            this.b = cxj_com_twitter_android_communities_x;
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

    public p a() {
        return new p((x) this.b.b(), (ak) this.c.b(), (c) this.d.b());
    }

    public static c<p> a(cxj<x> cxj_com_twitter_android_communities_x, cxj<ak> cxj_com_twitter_android_communities_ak, cxj<c> cxj_com_twitter_android_communities_c) {
        return new s(cxj_com_twitter_android_communities_x, cxj_com_twitter_android_communities_ak, cxj_com_twitter_android_communities_c);
    }
}
