package com.twitter.android.eventtimelines;

import com.twitter.app.common.di.d;
import cxj;
import dagger.internal.c;

/* compiled from: Twttr */
public final class v implements c<d> {
    static final /* synthetic */ boolean a;
    private final cxj<o> b;

    static {
        a = !v.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public v(cxj<o> cxj_com_twitter_android_eventtimelines_o) {
        if (a || cxj_com_twitter_android_eventtimelines_o != null) {
            this.b = cxj_com_twitter_android_eventtimelines_o;
            return;
        }
        throw new AssertionError();
    }

    public d a() {
        return (d) dagger.internal.d.a(r.a((o) this.b.b()), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static c<d> a(cxj<o> cxj_com_twitter_android_eventtimelines_o) {
        return new v(cxj_com_twitter_android_eventtimelines_o);
    }
}
