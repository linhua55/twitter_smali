package com.twitter.android.interestpicker;

import cxj;
import dagger.internal.c;

/* compiled from: Twttr */
public final class ao implements c<aj> {
    static final /* synthetic */ boolean a;
    private final cxj<d> b;

    static {
        a = !ao.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public ao(cxj<d> cxj_com_twitter_android_interestpicker_d) {
        if (a || cxj_com_twitter_android_interestpicker_d != null) {
            this.b = cxj_com_twitter_android_interestpicker_d;
            return;
        }
        throw new AssertionError();
    }

    public aj a() {
        return new aj((d) this.b.b());
    }

    public static c<aj> a(cxj<d> cxj_com_twitter_android_interestpicker_d) {
        return new ao(cxj_com_twitter_android_interestpicker_d);
    }
}
