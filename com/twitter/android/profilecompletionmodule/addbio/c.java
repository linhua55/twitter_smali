package com.twitter.android.profilecompletionmodule.addbio;

import cwk;
import cxj;
import dagger.internal.MembersInjectors;

/* compiled from: Twttr */
public final class c implements dagger.internal.c<b> {
    static final /* synthetic */ boolean a;
    private final cwk<b> b;
    private final cxj<a> c;
    private final cxj<AddBioState> d;

    static {
        a = !c.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public c(cwk<b> cwk_com_twitter_android_profilecompletionmodule_addbio_b, cxj<a> cxj_com_twitter_android_profilecompletionmodule_addbio_a, cxj<AddBioState> cxj_com_twitter_android_profilecompletionmodule_addbio_AddBioState) {
        if (a || cwk_com_twitter_android_profilecompletionmodule_addbio_b != null) {
            this.b = cwk_com_twitter_android_profilecompletionmodule_addbio_b;
            if (a || cxj_com_twitter_android_profilecompletionmodule_addbio_a != null) {
                this.c = cxj_com_twitter_android_profilecompletionmodule_addbio_a;
                if (a || cxj_com_twitter_android_profilecompletionmodule_addbio_AddBioState != null) {
                    this.d = cxj_com_twitter_android_profilecompletionmodule_addbio_AddBioState;
                    return;
                }
                throw new AssertionError();
            }
            throw new AssertionError();
        }
        throw new AssertionError();
    }

    public b a() {
        return (b) MembersInjectors.a(this.b, new b((a) this.c.b(), (AddBioState) this.d.b()));
    }

    public static dagger.internal.c<b> a(cwk<b> cwk_com_twitter_android_profilecompletionmodule_addbio_b, cxj<a> cxj_com_twitter_android_profilecompletionmodule_addbio_a, cxj<AddBioState> cxj_com_twitter_android_profilecompletionmodule_addbio_AddBioState) {
        return new c(cwk_com_twitter_android_profilecompletionmodule_addbio_b, cxj_com_twitter_android_profilecompletionmodule_addbio_a, cxj_com_twitter_android_profilecompletionmodule_addbio_AddBioState);
    }
}
