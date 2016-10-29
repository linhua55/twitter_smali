package com.twitter.android.profilecompletionmodule.chooselocation;

import cwk;
import cxj;
import dagger.internal.MembersInjectors;

/* compiled from: Twttr */
public final class c implements dagger.internal.c<b> {
    static final /* synthetic */ boolean a;
    private final cwk<b> b;
    private final cxj<a> c;
    private final cxj<ChooseLocationState> d;

    static {
        a = !c.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public c(cwk<b> cwk_com_twitter_android_profilecompletionmodule_chooselocation_b, cxj<a> cxj_com_twitter_android_profilecompletionmodule_chooselocation_a, cxj<ChooseLocationState> cxj_com_twitter_android_profilecompletionmodule_chooselocation_ChooseLocationState) {
        if (a || cwk_com_twitter_android_profilecompletionmodule_chooselocation_b != null) {
            this.b = cwk_com_twitter_android_profilecompletionmodule_chooselocation_b;
            if (a || cxj_com_twitter_android_profilecompletionmodule_chooselocation_a != null) {
                this.c = cxj_com_twitter_android_profilecompletionmodule_chooselocation_a;
                if (a || cxj_com_twitter_android_profilecompletionmodule_chooselocation_ChooseLocationState != null) {
                    this.d = cxj_com_twitter_android_profilecompletionmodule_chooselocation_ChooseLocationState;
                    return;
                }
                throw new AssertionError();
            }
            throw new AssertionError();
        }
        throw new AssertionError();
    }

    public b a() {
        return (b) MembersInjectors.a(this.b, new b((a) this.c.b(), (ChooseLocationState) this.d.b()));
    }

    public static dagger.internal.c<b> a(cwk<b> cwk_com_twitter_android_profilecompletionmodule_chooselocation_b, cxj<a> cxj_com_twitter_android_profilecompletionmodule_chooselocation_a, cxj<ChooseLocationState> cxj_com_twitter_android_profilecompletionmodule_chooselocation_ChooseLocationState) {
        return new c(cwk_com_twitter_android_profilecompletionmodule_chooselocation_b, cxj_com_twitter_android_profilecompletionmodule_chooselocation_a, cxj_com_twitter_android_profilecompletionmodule_chooselocation_ChooseLocationState);
    }
}
