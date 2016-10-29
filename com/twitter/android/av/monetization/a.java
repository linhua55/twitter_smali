package com.twitter.android.av.monetization;

import com.twitter.app.common.di.d;
import com.twitter.model.av.MonetizationCategory;
import dagger.internal.b;
import dagger.internal.e;
import defpackage.cgu;
import defpackage.cxj;
import java.util.Set;
import rx.o;
import uq;
import us;
import ut;

/* compiled from: Twttr */
public final class a implements p {
    static final /* synthetic */ boolean a;
    private cxj<Set<Integer>> b;
    private cxj<uq> c;
    private cxj<o<cgu<MonetizationCategory>>> d;

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
        return new c();
    }

    private void a(c cVar) {
        this.b = b.a(ut.a(cVar.a));
        this.c = new b(this, cVar);
        this.d = b.a(us.a(this.c));
    }

    public Set<d> b() {
        return (Set) e.a().b();
    }

    public Set<Integer> c() {
        return (Set) this.b.b();
    }

    public o<cgu<MonetizationCategory>> d() {
        return (o) this.d.b();
    }
}
