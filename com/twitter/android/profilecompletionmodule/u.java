package com.twitter.android.profilecompletionmodule;

import com.twitter.android.profilecompletionmodule.chooseavatar.b;
import com.twitter.app.common.di.d;
import cxj;
import dagger.internal.c;

/* compiled from: Twttr */
public final class u implements c<d> {
    static final /* synthetic */ boolean a;
    private final cxj<b> b;

    static {
        a = !u.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public u(cxj<b> cxj_com_twitter_android_profilecompletionmodule_chooseavatar_b) {
        if (a || cxj_com_twitter_android_profilecompletionmodule_chooseavatar_b != null) {
            this.b = cxj_com_twitter_android_profilecompletionmodule_chooseavatar_b;
            return;
        }
        throw new AssertionError();
    }

    public d a() {
        return (d) dagger.internal.d.a(g.a((b) this.b.b()), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static c<d> a(cxj<b> cxj_com_twitter_android_profilecompletionmodule_chooseavatar_b) {
        return new u(cxj_com_twitter_android_profilecompletionmodule_chooseavatar_b);
    }
}
