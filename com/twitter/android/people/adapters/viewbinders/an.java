package com.twitter.android.people.adapters.viewbinders;

import com.twitter.android.people.bb;
import com.twitter.android.yj;
import com.twitter.library.util.FriendshipCache;
import cxj;
import dagger.internal.c;

/* compiled from: Twttr */
public final class an implements c<am> {
    static final /* synthetic */ boolean a;
    private final cxj<FriendshipCache> b;
    private final cxj<yj> c;
    private final cxj<bb> d;

    static {
        a = !an.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public an(cxj<FriendshipCache> cxj_com_twitter_library_util_FriendshipCache, cxj<yj> cxj_com_twitter_android_yj, cxj<bb> cxj_com_twitter_android_people_bb) {
        if (a || cxj_com_twitter_library_util_FriendshipCache != null) {
            this.b = cxj_com_twitter_library_util_FriendshipCache;
            if (a || cxj_com_twitter_android_yj != null) {
                this.c = cxj_com_twitter_android_yj;
                if (a || cxj_com_twitter_android_people_bb != null) {
                    this.d = cxj_com_twitter_android_people_bb;
                    return;
                }
                throw new AssertionError();
            }
            throw new AssertionError();
        }
        throw new AssertionError();
    }

    public am a() {
        return new am((FriendshipCache) this.b.b(), (yj) this.c.b(), (bb) this.d.b());
    }

    public static c<am> a(cxj<FriendshipCache> cxj_com_twitter_library_util_FriendshipCache, cxj<yj> cxj_com_twitter_android_yj, cxj<bb> cxj_com_twitter_android_people_bb) {
        return new an(cxj_com_twitter_library_util_FriendshipCache, cxj_com_twitter_android_yj, cxj_com_twitter_android_people_bb);
    }
}
