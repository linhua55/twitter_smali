package com.twitter.android.communities;

import android.app.Application;
import android.content.Context;
import com.twitter.android.communities.header.a;
import com.twitter.android.communities.header.b;
import com.twitter.android.communities.header.f;
import com.twitter.android.communities.header.h;
import com.twitter.app.common.di.d;
import com.twitter.library.client.Session;
import com.twitter.library.client.az;
import com.twitter.library.provider.di;
import com.twitter.platform.t;
import dagger.internal.e;
import defpackage.cxj;
import java.util.Set;

/* compiled from: Twttr */
public final class al implements ae {
    static final /* synthetic */ boolean a;
    private cxj<Context> b;
    private cxj<Session> c;
    private cxj<az> d;
    private cxj<ag> e;
    private cxj<af> f;
    private cxj<di> g;
    private cxj<t> h;
    private cxj<e> i;
    private cxj<d> j;
    private cxj<l> k;
    private cxj<k> l;
    private cxj<y> m;
    private cxj<x> n;
    private cxj<c> o;
    private cxj<p> p;
    private cxj<n> q;
    private cxj<d> r;
    private cxj<Application> s;
    private cxj<g> t;
    private cxj<b> u;
    private cxj<a> v;
    private cxj<d> w;
    private cxj<Set<d>> x;

    static {
        a = !al.class.desiredAssertionStatus();
    }

    private al(as asVar) {
        if (a || asVar != null) {
            a(asVar);
            return;
        }
        throw new AssertionError();
    }

    public static as d() {
        return new as();
    }

    private void a(as asVar) {
        this.b = new am(this, asVar);
        this.c = new an(this, asVar);
        this.d = new ao(this, asVar);
        this.e = ah.a(this.b, this.c, this.d);
        this.f = dagger.internal.b.a(this.e);
        this.g = new ap(this, asVar);
        this.h = new aq(this, asVar);
        this.i = f.a(this.h);
        this.j = this.i;
        this.k = m.a(this.g, this.h, this.j);
        this.l = dagger.internal.b.a(this.k);
        this.m = dagger.internal.b.a(ad.a(this.f, this.l));
        this.n = dagger.internal.b.a(this.m);
        this.o = dagger.internal.b.a(u.a(asVar.a));
        this.p = dagger.internal.b.a(s.a(this.n, CommunityViewModelMapper_Factory.c(), this.o));
        this.q = dagger.internal.b.a(this.p);
        this.r = dagger.internal.b.a(w.a(this.q));
        this.s = new ar(this, asVar);
        this.t = dagger.internal.b.a(v.a(this.s, this.c, this.d));
        this.u = dagger.internal.b.a(f.a(this.t, CommunityViewModelMapper_Factory.c(), this.o));
        this.v = this.u;
        this.w = dagger.internal.b.a(h.a(this.v));
        this.x = e.a(2, 0).a(this.r).a(this.w).a();
    }

    public Set<d> b() {
        return (Set) this.x.b();
    }

    public n a() {
        return (n) this.q.b();
    }

    public a c() {
        return (a) this.v.b();
    }
}
