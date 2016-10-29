package com.twitter.android.smartfollow.followpeople;

import cwk;
import cxj;
import dagger.internal.MembersInjectors;
import dagger.internal.c;

/* compiled from: Twttr */
public final class b implements c<a> {
    static final /* synthetic */ boolean a;
    private final cwk<a> b;
    private final cxj<FollowPeopleState> c;

    static {
        a = !b.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public b(cwk<a> cwk_com_twitter_android_smartfollow_followpeople_a, cxj<FollowPeopleState> cxj_com_twitter_android_smartfollow_followpeople_FollowPeopleState) {
        if (a || cwk_com_twitter_android_smartfollow_followpeople_a != null) {
            this.b = cwk_com_twitter_android_smartfollow_followpeople_a;
            if (a || cxj_com_twitter_android_smartfollow_followpeople_FollowPeopleState != null) {
                this.c = cxj_com_twitter_android_smartfollow_followpeople_FollowPeopleState;
                return;
            }
            throw new AssertionError();
        }
        throw new AssertionError();
    }

    public a a() {
        return (a) MembersInjectors.a(this.b, new a((FollowPeopleState) this.c.b()));
    }

    public static c<a> a(cwk<a> cwk_com_twitter_android_smartfollow_followpeople_a, cxj<FollowPeopleState> cxj_com_twitter_android_smartfollow_followpeople_FollowPeopleState) {
        return new b(cwk_com_twitter_android_smartfollow_followpeople_a, cxj_com_twitter_android_smartfollow_followpeople_FollowPeopleState);
    }
}
