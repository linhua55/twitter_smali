package com.twitter.android.people.adapters.viewbinders;

import com.twitter.android.people.adapters.y;
import com.twitter.android.people.bb;
import com.twitter.android.yj;
import com.twitter.app.common.util.StateSaver;
import com.twitter.library.util.FriendshipCache;
import com.twitter.model.people.am;
import cwk;
import cxj;
import dagger.internal.MembersInjectors;
import dagger.internal.c;

/* compiled from: Twttr */
public final class au implements c<ar> {
    static final /* synthetic */ boolean a;
    private final cwk<ar> b;
    private final cxj<FriendshipCache> c;
    private final cxj<yj> d;
    private final cxj<bb> e;
    private final cxj<StateSaver<h<am, at, y>>> f;

    static {
        a = !au.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public au(cwk<ar> cwk_com_twitter_android_people_adapters_viewbinders_ar, cxj<FriendshipCache> cxj_com_twitter_library_util_FriendshipCache, cxj<yj> cxj_com_twitter_android_yj, cxj<bb> cxj_com_twitter_android_people_bb, cxj<StateSaver<h<am, at, y>>> cxj_com_twitter_app_common_util_StateSaver_com_twitter_android_people_adapters_viewbinders_h_com_twitter_model_people_am__com_twitter_android_people_adapters_viewbinders_at__com_twitter_android_people_adapters_y) {
        if (a || cwk_com_twitter_android_people_adapters_viewbinders_ar != null) {
            this.b = cwk_com_twitter_android_people_adapters_viewbinders_ar;
            if (a || cxj_com_twitter_library_util_FriendshipCache != null) {
                this.c = cxj_com_twitter_library_util_FriendshipCache;
                if (a || cxj_com_twitter_android_yj != null) {
                    this.d = cxj_com_twitter_android_yj;
                    if (a || cxj_com_twitter_android_people_bb != null) {
                        this.e = cxj_com_twitter_android_people_bb;
                        if (a || cxj_com_twitter_app_common_util_StateSaver_com_twitter_android_people_adapters_viewbinders_h_com_twitter_model_people_am__com_twitter_android_people_adapters_viewbinders_at__com_twitter_android_people_adapters_y != null) {
                            this.f = cxj_com_twitter_app_common_util_StateSaver_com_twitter_android_people_adapters_viewbinders_h_com_twitter_model_people_am__com_twitter_android_people_adapters_viewbinders_at__com_twitter_android_people_adapters_y;
                            return;
                        }
                        throw new AssertionError();
                    }
                    throw new AssertionError();
                }
                throw new AssertionError();
            }
            throw new AssertionError();
        }
        throw new AssertionError();
    }

    public ar a() {
        return (ar) MembersInjectors.a(this.b, new ar((FriendshipCache) this.c.b(), (yj) this.d.b(), (bb) this.e.b(), (StateSaver) this.f.b()));
    }

    public static c<ar> a(cwk<ar> cwk_com_twitter_android_people_adapters_viewbinders_ar, cxj<FriendshipCache> cxj_com_twitter_library_util_FriendshipCache, cxj<yj> cxj_com_twitter_android_yj, cxj<bb> cxj_com_twitter_android_people_bb, cxj<StateSaver<h<am, at, y>>> cxj_com_twitter_app_common_util_StateSaver_com_twitter_android_people_adapters_viewbinders_h_com_twitter_model_people_am__com_twitter_android_people_adapters_viewbinders_at__com_twitter_android_people_adapters_y) {
        return new au(cwk_com_twitter_android_people_adapters_viewbinders_ar, cxj_com_twitter_library_util_FriendshipCache, cxj_com_twitter_android_yj, cxj_com_twitter_android_people_bb, cxj_com_twitter_app_common_util_StateSaver_com_twitter_android_people_adapters_viewbinders_h_com_twitter_model_people_am__com_twitter_android_people_adapters_viewbinders_at__com_twitter_android_people_adapters_y);
    }
}
