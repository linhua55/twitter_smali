package com.twitter.android.profilecompletionmodule.chooseheader;

import cwk;
import cxj;
import dagger.internal.MembersInjectors;
import dagger.internal.c;

/* compiled from: Twttr */
public final class e implements c<b> {
    static final /* synthetic */ boolean a;
    private final cwk<b> b;
    private final cxj<a> c;
    private final cxj<ChooseHeaderState> d;

    static {
        a = !e.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public e(cwk<b> cwk_com_twitter_android_profilecompletionmodule_chooseheader_b, cxj<a> cxj_com_twitter_android_profilecompletionmodule_chooseheader_a, cxj<ChooseHeaderState> cxj_com_twitter_android_profilecompletionmodule_chooseheader_ChooseHeaderState) {
        if (a || cwk_com_twitter_android_profilecompletionmodule_chooseheader_b != null) {
            this.b = cwk_com_twitter_android_profilecompletionmodule_chooseheader_b;
            if (a || cxj_com_twitter_android_profilecompletionmodule_chooseheader_a != null) {
                this.c = cxj_com_twitter_android_profilecompletionmodule_chooseheader_a;
                if (a || cxj_com_twitter_android_profilecompletionmodule_chooseheader_ChooseHeaderState != null) {
                    this.d = cxj_com_twitter_android_profilecompletionmodule_chooseheader_ChooseHeaderState;
                    return;
                }
                throw new AssertionError();
            }
            throw new AssertionError();
        }
        throw new AssertionError();
    }

    public b a() {
        return (b) MembersInjectors.a(this.b, new b((a) this.c.b(), (ChooseHeaderState) this.d.b()));
    }

    public static c<b> a(cwk<b> cwk_com_twitter_android_profilecompletionmodule_chooseheader_b, cxj<a> cxj_com_twitter_android_profilecompletionmodule_chooseheader_a, cxj<ChooseHeaderState> cxj_com_twitter_android_profilecompletionmodule_chooseheader_ChooseHeaderState) {
        return new e(cwk_com_twitter_android_profilecompletionmodule_chooseheader_b, cxj_com_twitter_android_profilecompletionmodule_chooseheader_a, cxj_com_twitter_android_profilecompletionmodule_chooseheader_ChooseHeaderState);
    }
}
