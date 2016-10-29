package com.twitter.android.profilecompletionmodule.addbirthday;

import cwk;
import cxj;
import dagger.internal.MembersInjectors;
import dagger.internal.c;

/* compiled from: Twttr */
public final class f implements c<b> {
    static final /* synthetic */ boolean a;
    private final cwk<b> b;
    private final cxj<a> c;
    private final cxj<AddBirthdayState> d;

    static {
        a = !f.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public f(cwk<b> cwk_com_twitter_android_profilecompletionmodule_addbirthday_b, cxj<a> cxj_com_twitter_android_profilecompletionmodule_addbirthday_a, cxj<AddBirthdayState> cxj_com_twitter_android_profilecompletionmodule_addbirthday_AddBirthdayState) {
        if (a || cwk_com_twitter_android_profilecompletionmodule_addbirthday_b != null) {
            this.b = cwk_com_twitter_android_profilecompletionmodule_addbirthday_b;
            if (a || cxj_com_twitter_android_profilecompletionmodule_addbirthday_a != null) {
                this.c = cxj_com_twitter_android_profilecompletionmodule_addbirthday_a;
                if (a || cxj_com_twitter_android_profilecompletionmodule_addbirthday_AddBirthdayState != null) {
                    this.d = cxj_com_twitter_android_profilecompletionmodule_addbirthday_AddBirthdayState;
                    return;
                }
                throw new AssertionError();
            }
            throw new AssertionError();
        }
        throw new AssertionError();
    }

    public b a() {
        return (b) MembersInjectors.a(this.b, new b((a) this.c.b(), (AddBirthdayState) this.d.b()));
    }

    public static c<b> a(cwk<b> cwk_com_twitter_android_profilecompletionmodule_addbirthday_b, cxj<a> cxj_com_twitter_android_profilecompletionmodule_addbirthday_a, cxj<AddBirthdayState> cxj_com_twitter_android_profilecompletionmodule_addbirthday_AddBirthdayState) {
        return new f(cwk_com_twitter_android_profilecompletionmodule_addbirthday_b, cxj_com_twitter_android_profilecompletionmodule_addbirthday_a, cxj_com_twitter_android_profilecompletionmodule_addbirthday_AddBirthdayState);
    }
}
