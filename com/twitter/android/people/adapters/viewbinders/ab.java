package com.twitter.android.people.adapters.viewbinders;

import cwk;
import dagger.internal.MembersInjectors;
import dagger.internal.c;

/* compiled from: Twttr */
public final class ab implements c<z> {
    static final /* synthetic */ boolean a;
    private final cwk<z> b;

    static {
        a = !ab.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public ab(cwk<z> cwk_com_twitter_android_people_adapters_viewbinders_z) {
        if (a || cwk_com_twitter_android_people_adapters_viewbinders_z != null) {
            this.b = cwk_com_twitter_android_people_adapters_viewbinders_z;
            return;
        }
        throw new AssertionError();
    }

    public z a() {
        return (z) MembersInjectors.a(this.b, new z());
    }

    public static c<z> a(cwk<z> cwk_com_twitter_android_people_adapters_viewbinders_z) {
        return new ab(cwk_com_twitter_android_people_adapters_viewbinders_z);
    }
}
