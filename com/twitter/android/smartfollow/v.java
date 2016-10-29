package com.twitter.android.smartfollow;

import com.twitter.android.smartfollow.finishingtimeline.a;
import com.twitter.app.common.di.d;
import cxj;
import dagger.internal.c;

/* compiled from: Twttr */
public final class v implements c<d> {
    static final /* synthetic */ boolean a;
    private final cxj<a> b;

    static {
        a = !v.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public v(cxj<a> cxj_com_twitter_android_smartfollow_finishingtimeline_a) {
        if (a || cxj_com_twitter_android_smartfollow_finishingtimeline_a != null) {
            this.b = cxj_com_twitter_android_smartfollow_finishingtimeline_a;
            return;
        }
        throw new AssertionError();
    }

    public d a() {
        return (d) dagger.internal.d.a(o.a((a) this.b.b()), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static c<d> a(cxj<a> cxj_com_twitter_android_smartfollow_finishingtimeline_a) {
        return new v(cxj_com_twitter_android_smartfollow_finishingtimeline_a);
    }
}
