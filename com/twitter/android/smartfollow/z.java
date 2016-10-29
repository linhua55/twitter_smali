package com.twitter.android.smartfollow;

import com.twitter.android.smartfollow.sharelocation.a;
import com.twitter.app.common.di.d;
import cxj;
import dagger.internal.c;

/* compiled from: Twttr */
public final class z implements c<d> {
    static final /* synthetic */ boolean a;
    private final cxj<a> b;

    static {
        a = !z.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public z(cxj<a> cxj_com_twitter_android_smartfollow_sharelocation_a) {
        if (a || cxj_com_twitter_android_smartfollow_sharelocation_a != null) {
            this.b = cxj_com_twitter_android_smartfollow_sharelocation_a;
            return;
        }
        throw new AssertionError();
    }

    public d a() {
        return (d) dagger.internal.d.a(o.a((a) this.b.b()), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static c<d> a(cxj<a> cxj_com_twitter_android_smartfollow_sharelocation_a) {
        return new z(cxj_com_twitter_android_smartfollow_sharelocation_a);
    }
}
