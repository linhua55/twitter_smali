package com.twitter.android.profilecompletionmodule;

import com.twitter.app.common.di.d;
import cxj;
import dagger.internal.c;

/* compiled from: Twttr */
public final class x implements c<d> {
    static final /* synthetic */ boolean a;
    private final cxj<com.twitter.android.profilecompletionmodule.profilepreview.d> b;

    static {
        a = !x.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public x(cxj<com.twitter.android.profilecompletionmodule.profilepreview.d> cxj_com_twitter_android_profilecompletionmodule_profilepreview_d) {
        if (a || cxj_com_twitter_android_profilecompletionmodule_profilepreview_d != null) {
            this.b = cxj_com_twitter_android_profilecompletionmodule_profilepreview_d;
            return;
        }
        throw new AssertionError();
    }

    public d a() {
        return (d) dagger.internal.d.a(g.a((com.twitter.android.profilecompletionmodule.profilepreview.d) this.b.b()), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static c<d> a(cxj<com.twitter.android.profilecompletionmodule.profilepreview.d> cxj_com_twitter_android_profilecompletionmodule_profilepreview_d) {
        return new x(cxj_com_twitter_android_profilecompletionmodule_profilepreview_d);
    }
}
