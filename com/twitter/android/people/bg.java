package com.twitter.android.people;

import com.twitter.app.common.di.d;
import cxj;
import dagger.internal.c;

/* compiled from: Twttr */
public final class bg implements c<d> {
    static final /* synthetic */ boolean a;
    private final cxj<bd> b;

    static {
        a = !bg.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public bg(cxj<bd> cxj_com_twitter_android_people_bd) {
        if (a || cxj_com_twitter_android_people_bd != null) {
            this.b = cxj_com_twitter_android_people_bd;
            return;
        }
        throw new AssertionError();
    }

    public d a() {
        return (d) dagger.internal.d.a(bf.a((bd) this.b.b()), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static c<d> a(cxj<bd> cxj_com_twitter_android_people_bd) {
        return new bg(cxj_com_twitter_android_people_bd);
    }
}
