package com.twitter.android.av.watchmode;

import com.twitter.app.common.di.d;
import cxj;
import dagger.internal.c;

/* compiled from: Twttr */
public final class p implements c<d> {
    static final /* synthetic */ boolean a;
    private final cxj<q> b;

    static {
        a = !p.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public p(cxj<q> cxj_com_twitter_android_av_watchmode_q) {
        if (a || cxj_com_twitter_android_av_watchmode_q != null) {
            this.b = cxj_com_twitter_android_av_watchmode_q;
            return;
        }
        throw new AssertionError();
    }

    public d a() {
        return (d) dagger.internal.d.a(l.a((q) this.b.b()), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static c<d> a(cxj<q> cxj_com_twitter_android_av_watchmode_q) {
        return new p(cxj_com_twitter_android_av_watchmode_q);
    }
}
