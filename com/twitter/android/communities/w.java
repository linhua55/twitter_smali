package com.twitter.android.communities;

import com.twitter.app.common.di.d;
import cxj;
import dagger.internal.c;

/* compiled from: Twttr */
public final class w implements c<d> {
    static final /* synthetic */ boolean a;
    private final cxj<n> b;

    static {
        a = !w.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public w(cxj<n> cxj_com_twitter_android_communities_n) {
        if (a || cxj_com_twitter_android_communities_n != null) {
            this.b = cxj_com_twitter_android_communities_n;
            return;
        }
        throw new AssertionError();
    }

    public d a() {
        return (d) dagger.internal.d.a(t.a((n) this.b.b()), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static c<d> a(cxj<n> cxj_com_twitter_android_communities_n) {
        return new w(cxj_com_twitter_android_communities_n);
    }
}
