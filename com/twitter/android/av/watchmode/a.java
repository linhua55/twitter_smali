package com.twitter.android.av.watchmode;

import android.content.Context;
import com.twitter.app.common.di.d;
import com.twitter.library.av.playback.AVDataSource;
import com.twitter.library.client.Session;
import com.twitter.library.provider.di;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.model.av.ab;
import dagger.internal.MembersInjectors;
import dagger.internal.b;
import dagger.internal.e;
import defpackage.atf;
import defpackage.cgu;
import defpackage.cxj;
import java.util.Set;
import uu;
import uv;
import uw;
import uy;
import uz;
import va;
import vb;
import vc;
import vd;

/* compiled from: Twttr */
public final class a implements k {
    static final /* synthetic */ boolean a;
    private cxj<AVDataSource> b;
    private cxj<Context> c;
    private cxj<Session> d;
    private cxj<vb> e;
    private cxj<atf<AVDataSource, cgu<ab>>> f;
    private cxj<di> g;
    private cxj<uu> h;
    private cxj<uw> i;
    private cxj<atf<AVDataSource, vd>> j;
    private cxj<uz> k;
    private cxj<TwitterScribeAssociation> l;
    private cxj<i> m;
    private cxj<h> n;
    private cxj<d> o;
    private cxj<q> p;
    private cxj<d> q;
    private cxj<Set<d>> r;

    static {
        a = !a.class.desiredAssertionStatus();
    }

    private a(e eVar) {
        if (a || eVar != null) {
            a(eVar);
            return;
        }
        throw new AssertionError();
    }

    public static e a() {
        return new e();
    }

    private void a(e eVar) {
        this.b = n.a(eVar.a);
        this.c = new b(this, eVar);
        this.d = new c(this, eVar);
        this.e = b.a(vc.a(MembersInjectors.a(), this.c, this.d));
        this.f = b.a(this.e);
        this.g = new d(this, eVar);
        this.h = b.a(uv.a(MembersInjectors.a(), this.g));
        this.i = uy.a(this.b, this.f, this.h);
        this.j = b.a(this.i);
        this.k = b.a(va.a(this.j));
        this.l = m.a(eVar.a);
        this.m = b.a(j.a(this.k, this.b, this.l));
        this.n = b.a(this.m);
        this.o = b.a(o.a(this.n));
        this.p = b.a(r.a(MembersInjectors.a(), this.c, this.l, this.b));
        this.q = b.a(p.a(this.p));
        this.r = e.a(2, 0).a(this.o).a(this.q).a();
    }

    public Set<d> b() {
        return (Set) this.r.b();
    }

    public h c() {
        return (h) this.n.b();
    }

    public q d() {
        return (q) this.p.b();
    }
}
