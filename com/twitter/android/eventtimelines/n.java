package com.twitter.android.eventtimelines;

import com.twitter.android.eventtimelines.page.g;
import cxj;
import dagger.internal.c;
import dagger.internal.d;

/* compiled from: Twttr */
public final class n implements c<com.twitter.android.eventtimelines.page.c> {
    static final /* synthetic */ boolean a;
    private final cxj<g> b;

    static {
        a = !n.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public n(cxj<g> cxj_com_twitter_android_eventtimelines_page_g) {
        if (a || cxj_com_twitter_android_eventtimelines_page_g != null) {
            this.b = cxj_com_twitter_android_eventtimelines_page_g;
            return;
        }
        throw new AssertionError();
    }

    public com.twitter.android.eventtimelines.page.c a() {
        return (com.twitter.android.eventtimelines.page.c) d.a(m.a((g) this.b.b()), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static c<com.twitter.android.eventtimelines.page.c> a(cxj<g> cxj_com_twitter_android_eventtimelines_page_g) {
        return new n(cxj_com_twitter_android_eventtimelines_page_g);
    }
}
