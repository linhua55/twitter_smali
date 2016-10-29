package com.twitter.app.common.app.internal;

import com.twitter.database.lru.x;
import cxj;
import dagger.internal.c;
import dagger.internal.d;
import defpackage.auk;

/* compiled from: Twttr */
public final class al implements c<auk> {
    static final /* synthetic */ boolean a;
    private final cxj<x> b;

    static {
        a = !al.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public al(cxj<x> cxj_com_twitter_database_lru_x) {
        if (a || cxj_com_twitter_database_lru_x != null) {
            this.b = cxj_com_twitter_database_lru_x;
            return;
        }
        throw new AssertionError();
    }

    public auk a() {
        return (auk) d.a(ai.a((x) this.b.b()), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static c<auk> a(cxj<x> cxj_com_twitter_database_lru_x) {
        return new al(cxj_com_twitter_database_lru_x);
    }
}
