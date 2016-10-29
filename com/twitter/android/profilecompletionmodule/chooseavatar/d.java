package com.twitter.android.profilecompletionmodule.chooseavatar;

import cwk;
import cxj;
import dagger.internal.MembersInjectors;
import dagger.internal.c;

/* compiled from: Twttr */
public final class d implements c<b> {
    static final /* synthetic */ boolean a;
    private final cwk<b> b;
    private final cxj<a> c;
    private final cxj<ChooseAvatarState> d;

    static {
        a = !d.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public d(cwk<b> cwk_com_twitter_android_profilecompletionmodule_chooseavatar_b, cxj<a> cxj_com_twitter_android_profilecompletionmodule_chooseavatar_a, cxj<ChooseAvatarState> cxj_com_twitter_android_profilecompletionmodule_chooseavatar_ChooseAvatarState) {
        if (a || cwk_com_twitter_android_profilecompletionmodule_chooseavatar_b != null) {
            this.b = cwk_com_twitter_android_profilecompletionmodule_chooseavatar_b;
            if (a || cxj_com_twitter_android_profilecompletionmodule_chooseavatar_a != null) {
                this.c = cxj_com_twitter_android_profilecompletionmodule_chooseavatar_a;
                if (a || cxj_com_twitter_android_profilecompletionmodule_chooseavatar_ChooseAvatarState != null) {
                    this.d = cxj_com_twitter_android_profilecompletionmodule_chooseavatar_ChooseAvatarState;
                    return;
                }
                throw new AssertionError();
            }
            throw new AssertionError();
        }
        throw new AssertionError();
    }

    public b a() {
        return (b) MembersInjectors.a(this.b, new b((a) this.c.b(), (ChooseAvatarState) this.d.b()));
    }

    public static c<b> a(cwk<b> cwk_com_twitter_android_profilecompletionmodule_chooseavatar_b, cxj<a> cxj_com_twitter_android_profilecompletionmodule_chooseavatar_a, cxj<ChooseAvatarState> cxj_com_twitter_android_profilecompletionmodule_chooseavatar_ChooseAvatarState) {
        return new d(cwk_com_twitter_android_profilecompletionmodule_chooseavatar_b, cxj_com_twitter_android_profilecompletionmodule_chooseavatar_a, cxj_com_twitter_android_profilecompletionmodule_chooseavatar_ChooseAvatarState);
    }
}
