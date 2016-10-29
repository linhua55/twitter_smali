package com.twitter.android.people;

import com.twitter.app.common.di.d;
import dagger.internal.b;
import dagger.internal.e;
import defpackage.cxj;
import java.util.Set;

/* compiled from: Twttr */
public final class k implements bh {
    static final /* synthetic */ boolean a;
    private cxj<be> b;
    private cxj<bd> c;
    private cxj<d> d;
    private cxj<Set<d>> e;

    static {
        a = !k.class.desiredAssertionStatus();
    }

    private k(m mVar) {
        if (a || mVar != null) {
            a(mVar);
            return;
        }
        throw new AssertionError();
    }

    public static m a() {
        return new m();
    }

    private void a(m mVar) {
        this.b = b.a(SearchPresenterImpl_Factory.c());
        this.c = b.a(this.b);
        this.d = b.a(bg.a(this.c));
        this.e = e.a(1, 0).a(this.d).a();
    }

    public Set<d> b() {
        return (Set) this.e.b();
    }

    public bd c() {
        return (bd) this.c.b();
    }
}
