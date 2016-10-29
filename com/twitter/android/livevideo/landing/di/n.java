package com.twitter.android.livevideo.landing.di;

import abr;
import cxj;
import dagger.internal.c;
import dagger.internal.d;

/* compiled from: Twttr */
public final class n implements c<abr> {
    static final /* synthetic */ boolean a;
    private final cxj<com.twitter.android.livevideo.landing.c> b;

    static {
        a = !n.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public n(cxj<com.twitter.android.livevideo.landing.c> cxj_com_twitter_android_livevideo_landing_c) {
        if (a || cxj_com_twitter_android_livevideo_landing_c != null) {
            this.b = cxj_com_twitter_android_livevideo_landing_c;
            return;
        }
        throw new AssertionError();
    }

    public abr a() {
        return (abr) d.a(l.a((com.twitter.android.livevideo.landing.c) this.b.b()), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static c<abr> a(cxj<com.twitter.android.livevideo.landing.c> cxj_com_twitter_android_livevideo_landing_c) {
        return new n(cxj_com_twitter_android_livevideo_landing_c);
    }
}
