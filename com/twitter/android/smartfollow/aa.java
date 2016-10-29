package com.twitter.android.smartfollow;

import com.twitter.android.smartfollow.waitingforsuggestions.a;
import com.twitter.app.common.di.d;
import cxj;
import dagger.internal.c;

/* compiled from: Twttr */
public final class aa implements c<d> {
    static final /* synthetic */ boolean a;
    private final cxj<a> b;

    static {
        a = !aa.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public aa(cxj<a> cxj_com_twitter_android_smartfollow_waitingforsuggestions_a) {
        if (a || cxj_com_twitter_android_smartfollow_waitingforsuggestions_a != null) {
            this.b = cxj_com_twitter_android_smartfollow_waitingforsuggestions_a;
            return;
        }
        throw new AssertionError();
    }

    public d a() {
        return (d) dagger.internal.d.a(o.a((a) this.b.b()), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static c<d> a(cxj<a> cxj_com_twitter_android_smartfollow_waitingforsuggestions_a) {
        return new aa(cxj_com_twitter_android_smartfollow_waitingforsuggestions_a);
    }
}
