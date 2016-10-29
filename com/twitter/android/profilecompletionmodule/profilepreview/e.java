package com.twitter.android.profilecompletionmodule.profilepreview;

import cwk;
import cxj;
import dagger.internal.MembersInjectors;
import dagger.internal.c;

/* compiled from: Twttr */
public final class e implements c<d> {
    static final /* synthetic */ boolean a;
    private final cwk<d> b;
    private final cxj<c> c;

    static {
        a = !e.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public e(cwk<d> cwk_com_twitter_android_profilecompletionmodule_profilepreview_d, cxj<c> cxj_com_twitter_android_profilecompletionmodule_profilepreview_c) {
        if (a || cwk_com_twitter_android_profilecompletionmodule_profilepreview_d != null) {
            this.b = cwk_com_twitter_android_profilecompletionmodule_profilepreview_d;
            if (a || cxj_com_twitter_android_profilecompletionmodule_profilepreview_c != null) {
                this.c = cxj_com_twitter_android_profilecompletionmodule_profilepreview_c;
                return;
            }
            throw new AssertionError();
        }
        throw new AssertionError();
    }

    public d a() {
        return (d) MembersInjectors.a(this.b, new d((c) this.c.b()));
    }

    public static c<d> a(cwk<d> cwk_com_twitter_android_profilecompletionmodule_profilepreview_d, cxj<c> cxj_com_twitter_android_profilecompletionmodule_profilepreview_c) {
        return new e(cwk_com_twitter_android_profilecompletionmodule_profilepreview_d, cxj_com_twitter_android_profilecompletionmodule_profilepreview_c);
    }
}
