package com.twitter.android.communities.header;

import com.twitter.app.common.di.d;
import cxj;
import dagger.internal.c;

/* compiled from: Twttr */
public final class h implements c<d> {
    static final /* synthetic */ boolean a;
    private final cxj<a> b;

    static {
        a = !h.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public h(cxj<a> cxj_com_twitter_android_communities_header_a) {
        if (a || cxj_com_twitter_android_communities_header_a != null) {
            this.b = cxj_com_twitter_android_communities_header_a;
            return;
        }
        throw new AssertionError();
    }

    public d a() {
        return (d) dagger.internal.d.a(g.a((a) this.b.b()), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static c<d> a(cxj<a> cxj_com_twitter_android_communities_header_a) {
        return new h(cxj_com_twitter_android_communities_header_a);
    }
}
