package com.twitter.app.common.app.internal;

import com.twitter.database.lru.j;
import com.twitter.database.lru.t;
import com.twitter.database.lru.x;
import cxj;
import dagger.internal.c;
import dagger.internal.d;

/* compiled from: Twttr */
public final class am implements c<x> {
    static final /* synthetic */ boolean a;
    private final cxj<j> b;
    private final cxj<t> c;

    static {
        a = !am.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public am(cxj<j> cxj_com_twitter_database_lru_j, cxj<t> cxj_com_twitter_database_lru_t) {
        if (a || cxj_com_twitter_database_lru_j != null) {
            this.b = cxj_com_twitter_database_lru_j;
            if (a || cxj_com_twitter_database_lru_t != null) {
                this.c = cxj_com_twitter_database_lru_t;
                return;
            }
            throw new AssertionError();
        }
        throw new AssertionError();
    }

    public x a() {
        return (x) d.a(ai.a((j) this.b.b(), (t) this.c.b()), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static c<x> a(cxj<j> cxj_com_twitter_database_lru_j, cxj<t> cxj_com_twitter_database_lru_t) {
        return new am(cxj_com_twitter_database_lru_j, cxj_com_twitter_database_lru_t);
    }
}
