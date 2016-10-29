package com.twitter.android.av.watchmode;

import com.twitter.app.common.di.d;
import cxj;
import dagger.internal.c;

/* compiled from: Twttr */
public final class o implements c<d> {
    static final /* synthetic */ boolean a;
    private final cxj<h> b;

    static {
        a = !o.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public o(cxj<h> cxj_com_twitter_android_av_watchmode_h) {
        if (a || cxj_com_twitter_android_av_watchmode_h != null) {
            this.b = cxj_com_twitter_android_av_watchmode_h;
            return;
        }
        throw new AssertionError();
    }

    public d a() {
        return (d) dagger.internal.d.a(l.a((h) this.b.b()), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static c<d> a(cxj<h> cxj_com_twitter_android_av_watchmode_h) {
        return new o(cxj_com_twitter_android_av_watchmode_h);
    }
}
