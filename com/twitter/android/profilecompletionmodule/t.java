package com.twitter.android.profilecompletionmodule;

import com.twitter.android.profilecompletionmodule.addbirthday.b;
import com.twitter.app.common.di.d;
import cxj;
import dagger.internal.c;

/* compiled from: Twttr */
public final class t implements c<d> {
    static final /* synthetic */ boolean a;
    private final cxj<b> b;

    static {
        a = !t.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public t(cxj<b> cxj_com_twitter_android_profilecompletionmodule_addbirthday_b) {
        if (a || cxj_com_twitter_android_profilecompletionmodule_addbirthday_b != null) {
            this.b = cxj_com_twitter_android_profilecompletionmodule_addbirthday_b;
            return;
        }
        throw new AssertionError();
    }

    public d a() {
        return (d) dagger.internal.d.a(g.a((b) this.b.b()), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static c<d> a(cxj<b> cxj_com_twitter_android_profilecompletionmodule_addbirthday_b) {
        return new t(cxj_com_twitter_android_profilecompletionmodule_addbirthday_b);
    }
}
