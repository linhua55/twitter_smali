package com.twitter.android.livevideo.landing.di;

import com.twitter.android.livevideo.landing.a;
import com.twitter.app.common.list.h;
import cxj;
import dagger.internal.c;
import dagger.internal.d;

/* compiled from: Twttr */
public final class r implements c<h> {
    static final /* synthetic */ boolean a;
    private final l b;
    private final cxj<a> c;

    static {
        a = !r.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public r(l lVar, cxj<a> cxj_com_twitter_android_livevideo_landing_a) {
        if (a || lVar != null) {
            this.b = lVar;
            if (a || cxj_com_twitter_android_livevideo_landing_a != null) {
                this.c = cxj_com_twitter_android_livevideo_landing_a;
                return;
            }
            throw new AssertionError();
        }
        throw new AssertionError();
    }

    public h a() {
        return (h) d.a(this.b.a((a) this.c.b()), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static c<h> a(l lVar, cxj<a> cxj_com_twitter_android_livevideo_landing_a) {
        return new r(lVar, cxj_com_twitter_android_livevideo_landing_a);
    }
}
