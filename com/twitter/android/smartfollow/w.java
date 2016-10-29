package com.twitter.android.smartfollow;

import com.twitter.android.smartfollow.followpeople.a;
import com.twitter.app.common.di.d;
import cxj;
import dagger.internal.c;

/* compiled from: Twttr */
public final class w implements c<d> {
    static final /* synthetic */ boolean a;
    private final cxj<a> b;

    static {
        a = !w.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public w(cxj<a> cxj_com_twitter_android_smartfollow_followpeople_a) {
        if (a || cxj_com_twitter_android_smartfollow_followpeople_a != null) {
            this.b = cxj_com_twitter_android_smartfollow_followpeople_a;
            return;
        }
        throw new AssertionError();
    }

    public d a() {
        return (d) dagger.internal.d.a(o.a((a) this.b.b()), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static c<d> a(cxj<a> cxj_com_twitter_android_smartfollow_followpeople_a) {
        return new w(cxj_com_twitter_android_smartfollow_followpeople_a);
    }
}
