package com.twitter.app.drafts;

import atf;
import cgu;
import com.twitter.database.model.g;
import com.twitter.database.schema.DraftsSchema;
import com.twitter.library.client.bg;
import com.twitter.model.drafts.d;
import cxj;
import dagger.internal.b;
import dagger.internal.e;
import defpackage.apo;
import defpackage.app;
import defpackage.apr;
import defpackage.aps;
import defpackage.apt;
import defpackage.apu;
import java.util.Set;

/* compiled from: Twttr */
public final class c implements o {
    static final /* synthetic */ boolean a;
    private cxj<DraftsSchema> b;
    private cxj<atf<g, cgu<d>>> c;
    private cxj<apo> d;
    private cxj<n> e;
    private cxj<bg> f;
    private cxj<p> g;
    private cxj<m> h;
    private cxj<com.twitter.app.common.di.d> i;
    private cxj<Set<com.twitter.app.common.di.d>> j;

    static {
        a = !c.class.desiredAssertionStatus();
    }

    private c(f fVar) {
        if (a || fVar != null) {
            a(fVar);
            return;
        }
        throw new AssertionError();
    }

    public static f a() {
        return new f();
    }

    private void a(f fVar) {
        this.b = new d(this, fVar);
        this.c = b.a(apr.a(this.b));
        this.d = app.a(this.c);
        this.e = b.a(this.d);
        this.f = new e(this, fVar);
        this.g = q.a(this.f);
        this.h = b.a(aps.a(fVar.a, this.e, this.g));
        this.i = b.a(apt.a(this.h));
        this.j = e.a(1, 0).a(this.i).a();
    }

    public Set<com.twitter.app.common.di.d> b() {
        return (Set) this.j.b();
    }

    public r a(apu apu) {
        return new g(this, apu, null);
    }
}
