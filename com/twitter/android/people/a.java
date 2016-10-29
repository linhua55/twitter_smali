package com.twitter.android.people;

import com.twitter.database.lru.ac;
import com.twitter.model.people.ag;
import cxj;
import dagger.internal.b;
import defpackage.auk;

/* compiled from: Twttr */
public final class a implements n {
    static final /* synthetic */ boolean a;
    private cxj<auk> b;
    private cxj<ac<String, ag>> c;

    static {
        a = !a.class.desiredAssertionStatus();
    }

    private a(c cVar) {
        if (a || cVar != null) {
            a(cVar);
            return;
        }
        throw new AssertionError();
    }

    public static c a() {
        return new c(null);
    }

    private void a(c cVar) {
        this.b = new b(this, cVar);
        this.c = b.a(p.a(this.b));
    }

    public ac<String, ag> b() {
        return (ac) this.c.b();
    }
}
