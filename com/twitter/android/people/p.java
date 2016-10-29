package com.twitter.android.people;

import com.twitter.database.lru.ac;
import com.twitter.model.people.ag;
import cxj;
import dagger.internal.c;
import dagger.internal.d;
import defpackage.auk;

/* compiled from: Twttr */
public final class p implements c<ac<String, ag>> {
    static final /* synthetic */ boolean a;
    private final cxj<auk> b;

    static {
        a = !p.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public p(cxj<auk> cxj_auk) {
        if (a || cxj_auk != null) {
            this.b = cxj_auk;
            return;
        }
        throw new AssertionError();
    }

    public ac<String, ag> a() {
        return (ac) d.a(o.a((auk) this.b.b()), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static c<ac<String, ag>> a(cxj<auk> cxj_auk) {
        return new p(cxj_auk);
    }
}
