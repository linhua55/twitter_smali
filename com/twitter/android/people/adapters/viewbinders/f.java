package com.twitter.android.people.adapters.viewbinders;

import android.app.Activity;
import com.twitter.android.FollowFlowController;
import com.twitter.android.people.bb;
import cwk;
import cxj;
import dagger.internal.MembersInjectors;
import dagger.internal.c;

/* compiled from: Twttr */
public final class f implements c<a> {
    static final /* synthetic */ boolean a;
    private final cwk<a> b;
    private final cxj<Activity> c;
    private final cxj<FollowFlowController> d;
    private final cxj<d> e;
    private final cxj<bb> f;

    static {
        a = !f.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public f(cwk<a> cwk_com_twitter_android_people_adapters_viewbinders_a, cxj<Activity> cxj_android_app_Activity, cxj<FollowFlowController> cxj_com_twitter_android_FollowFlowController, cxj<d> cxj_com_twitter_android_people_adapters_viewbinders_d, cxj<bb> cxj_com_twitter_android_people_bb) {
        if (a || cwk_com_twitter_android_people_adapters_viewbinders_a != null) {
            this.b = cwk_com_twitter_android_people_adapters_viewbinders_a;
            if (a || cxj_android_app_Activity != null) {
                this.c = cxj_android_app_Activity;
                if (a || cxj_com_twitter_android_FollowFlowController != null) {
                    this.d = cxj_com_twitter_android_FollowFlowController;
                    if (a || cxj_com_twitter_android_people_adapters_viewbinders_d != null) {
                        this.e = cxj_com_twitter_android_people_adapters_viewbinders_d;
                        if (a || cxj_com_twitter_android_people_bb != null) {
                            this.f = cxj_com_twitter_android_people_bb;
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

    public a a() {
        return (a) MembersInjectors.a(this.b, new a((Activity) this.c.b(), (FollowFlowController) this.d.b(), (d) this.e.b(), (bb) this.f.b()));
    }

    public static c<a> a(cwk<a> cwk_com_twitter_android_people_adapters_viewbinders_a, cxj<Activity> cxj_android_app_Activity, cxj<FollowFlowController> cxj_com_twitter_android_FollowFlowController, cxj<d> cxj_com_twitter_android_people_adapters_viewbinders_d, cxj<bb> cxj_com_twitter_android_people_bb) {
        return new f(cwk_com_twitter_android_people_adapters_viewbinders_a, cxj_android_app_Activity, cxj_com_twitter_android_FollowFlowController, cxj_com_twitter_android_people_adapters_viewbinders_d, cxj_com_twitter_android_people_bb);
    }
}
