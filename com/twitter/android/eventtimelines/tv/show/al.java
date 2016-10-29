package com.twitter.android.eventtimelines.tv.show;

import com.twitter.app.common.di.d;
import cxj;
import dagger.internal.c;

/* compiled from: Twttr */
public final class al implements c<d> {
    static final /* synthetic */ boolean a;
    private final cxj<ad> b;

    static {
        a = !al.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public al(cxj<ad> cxj_com_twitter_android_eventtimelines_tv_show_ad) {
        if (a || cxj_com_twitter_android_eventtimelines_tv_show_ad != null) {
            this.b = cxj_com_twitter_android_eventtimelines_tv_show_ad;
            return;
        }
        throw new AssertionError();
    }

    public d a() {
        return (d) dagger.internal.d.a(aj.a((ad) this.b.b()), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static c<d> a(cxj<ad> cxj_com_twitter_android_eventtimelines_tv_show_ad) {
        return new al(cxj_com_twitter_android_eventtimelines_tv_show_ad);
    }
}
