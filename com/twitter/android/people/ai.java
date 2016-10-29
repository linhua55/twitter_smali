package com.twitter.android.people;

import com.twitter.app.common.di.d;
import cxj;
import dagger.internal.c;

/* compiled from: Twttr */
public final class ai implements c<d> {
    static final /* synthetic */ boolean a;
    private final cxj<v> b;

    static {
        a = !ai.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public ai(cxj<v> cxj_com_twitter_android_people_v) {
        if (a || cxj_com_twitter_android_people_v != null) {
            this.b = cxj_com_twitter_android_people_v;
            return;
        }
        throw new AssertionError();
    }

    public d a() {
        return (d) dagger.internal.d.a(aa.a((v) this.b.b()), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static c<d> a(cxj<v> cxj_com_twitter_android_people_v) {
        return new ai(cxj_com_twitter_android_people_v);
    }
}
