package com.twitter.android.people;

import akj;
import cby;
import com.twitter.android.people.adapters.ag;
import cxj;
import dagger.internal.c;

/* compiled from: Twttr */
public final class u implements c<q> {
    static final /* synthetic */ boolean a;
    private final cxj<cby> b;
    private final cxj<akj> c;
    private final cxj<ag> d;

    static {
        a = !u.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public u(cxj<cby> cxj_cby, cxj<akj> cxj_akj, cxj<ag> cxj_com_twitter_android_people_adapters_ag) {
        if (a || cxj_cby != null) {
            this.b = cxj_cby;
            if (a || cxj_akj != null) {
                this.c = cxj_akj;
                if (a || cxj_com_twitter_android_people_adapters_ag != null) {
                    this.d = cxj_com_twitter_android_people_adapters_ag;
                    return;
                }
                throw new AssertionError();
            }
            throw new AssertionError();
        }
        throw new AssertionError();
    }

    public q a() {
        return new q((cby) this.b.b(), (akj) this.c.b(), (ag) this.d.b());
    }

    public static c<q> a(cxj<cby> cxj_cby, cxj<akj> cxj_akj, cxj<ag> cxj_com_twitter_android_people_adapters_ag) {
        return new u(cxj_cby, cxj_akj, cxj_com_twitter_android_people_adapters_ag);
    }
}
