package com.twitter.android.people.adapters.viewbinders;

import android.app.Activity;
import com.twitter.android.FollowFlowController;
import com.twitter.android.people.bb;
import cxj;
import dagger.internal.c;

/* compiled from: Twttr */
public final class af implements c<ac> {
    static final /* synthetic */ boolean a;
    private final cxj<Activity> b;
    private final cxj<FollowFlowController> c;
    private final cxj<bb> d;

    static {
        a = !af.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public af(cxj<Activity> cxj_android_app_Activity, cxj<FollowFlowController> cxj_com_twitter_android_FollowFlowController, cxj<bb> cxj_com_twitter_android_people_bb) {
        if (a || cxj_android_app_Activity != null) {
            this.b = cxj_android_app_Activity;
            if (a || cxj_com_twitter_android_FollowFlowController != null) {
                this.c = cxj_com_twitter_android_FollowFlowController;
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

    public ac a() {
        return new ac((Activity) this.b.b(), (FollowFlowController) this.c.b(), (bb) this.d.b());
    }

    public static c<ac> a(cxj<Activity> cxj_android_app_Activity, cxj<FollowFlowController> cxj_com_twitter_android_FollowFlowController, cxj<bb> cxj_com_twitter_android_people_bb) {
        return new af(cxj_android_app_Activity, cxj_com_twitter_android_FollowFlowController, cxj_com_twitter_android_people_bb);
    }
}
