package com.twitter.android.people;

import cby;
import com.twitter.library.util.FriendshipCache;
import cxj;
import dagger.internal.c;

/* compiled from: Twttr */
public final class z implements c<x> {
    static final /* synthetic */ boolean a;
    private final cxj<cby> b;
    private final cxj<q> c;
    private final cxj<FriendshipCache> d;

    static {
        a = !z.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public z(cxj<cby> cxj_cby, cxj<q> cxj_com_twitter_android_people_q, cxj<FriendshipCache> cxj_com_twitter_library_util_FriendshipCache) {
        if (a || cxj_cby != null) {
            this.b = cxj_cby;
            if (a || cxj_com_twitter_android_people_q != null) {
                this.c = cxj_com_twitter_android_people_q;
                if (a || cxj_com_twitter_library_util_FriendshipCache != null) {
                    this.d = cxj_com_twitter_library_util_FriendshipCache;
                    return;
                }
                throw new AssertionError();
            }
            throw new AssertionError();
        }
        throw new AssertionError();
    }

    public x a() {
        return new x((cby) this.b.b(), (q) this.c.b(), (FriendshipCache) this.d.b());
    }

    public static c<x> a(cxj<cby> cxj_cby, cxj<q> cxj_com_twitter_android_people_q, cxj<FriendshipCache> cxj_com_twitter_library_util_FriendshipCache) {
        return new z(cxj_cby, cxj_com_twitter_android_people_q, cxj_com_twitter_library_util_FriendshipCache);
    }
}
