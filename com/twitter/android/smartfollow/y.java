package com.twitter.android.smartfollow;

import com.twitter.android.smartfollow.interestpicker.a;
import com.twitter.app.common.di.d;
import cxj;
import dagger.internal.c;

/* compiled from: Twttr */
public final class y implements c<d> {
    static final /* synthetic */ boolean a;
    private final cxj<a> b;

    static {
        a = !y.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public y(cxj<a> cxj_com_twitter_android_smartfollow_interestpicker_a) {
        if (a || cxj_com_twitter_android_smartfollow_interestpicker_a != null) {
            this.b = cxj_com_twitter_android_smartfollow_interestpicker_a;
            return;
        }
        throw new AssertionError();
    }

    public d a() {
        return (d) dagger.internal.d.a(o.a((a) this.b.b()), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static c<d> a(cxj<a> cxj_com_twitter_android_smartfollow_interestpicker_a) {
        return new y(cxj_com_twitter_android_smartfollow_interestpicker_a);
    }
}
