package com.twitter.android.eventtimelines.tv.show;

import android.app.Application;
import android.content.Context;
import android.content.res.Resources;
import com.twitter.android.eventtimelines.SearchTimelinePresenterModule_ProvideRandomFactory;
import com.twitter.android.eventtimelines.SearchTimelineState;
import com.twitter.android.eventtimelines.l;
import com.twitter.android.eventtimelines.o;
import com.twitter.android.eventtimelines.p;
import com.twitter.android.eventtimelines.page.PageInfoFactoryImpl_Factory;
import com.twitter.android.eventtimelines.page.PageTemplateFactory_Factory;
import com.twitter.android.eventtimelines.page.d;
import com.twitter.android.eventtimelines.q;
import com.twitter.android.eventtimelines.s;
import com.twitter.android.eventtimelines.t;
import com.twitter.android.eventtimelines.u;
import com.twitter.android.eventtimelines.v;
import com.twitter.library.client.Session;
import com.twitter.library.client.az;
import com.twitter.library.provider.di;
import dagger.internal.b;
import dagger.internal.e;
import defpackage.cxj;
import java.util.Set;

/* compiled from: Twttr */
public final class g implements av {
    static final /* synthetic */ boolean a;
    private cxj<di> b;
    private cxj<Application> c;
    private cxj<Resources> d;
    private cxj<Session> e;
    private cxj<d> f;
    private cxj<l> g;
    private cxj<SearchTimelineState> h;
    private cxj<p> i;
    private cxj<o> j;
    private cxj<com.twitter.app.common.di.d> k;
    private cxj<Context> l;
    private cxj<az> m;
    private cxj<an> n;
    private cxj<am> o;
    private cxj<z> p;
    private cxj<y> q;
    private cxj<aq> r;
    private cxj<ap> s;
    private cxj<b> t;
    private cxj<a> u;
    private cxj<s> v;
    private cxj<af> w;
    private cxj<ad> x;
    private cxj<com.twitter.app.common.di.d> y;
    private cxj<Set<com.twitter.app.common.di.d>> z;

    static {
        a = !g.class.desiredAssertionStatus();
    }

    private g(m mVar) {
        if (a || mVar != null) {
            a(mVar);
            return;
        }
        throw new AssertionError();
    }

    public static m c() {
        return new m();
    }

    private void a(m mVar) {
        this.b = new h(this, mVar);
        this.c = new i(this, mVar);
        this.d = s.a(this.c);
        this.e = new j(this, mVar);
        this.f = PageInfoFactoryImpl_Factory.c();
        this.g = t.a(mVar.a);
        this.h = u.a(mVar.a);
        this.i = b.a(q.a(this.b, this.d, PageTemplateFactory_Factory.c(), this.e, this.f, SearchTimelinePresenterModule_ProvideRandomFactory.c(), this.g, this.h));
        this.j = b.a(this.i);
        this.k = b.a(v.a(this.j));
        this.l = new k(this, mVar);
        this.m = new l(this, mVar);
        this.n = ao.a(this.l, this.e, this.m);
        this.o = b.a(this.n);
        this.p = aa.a(this.b);
        this.q = b.a(this.p);
        this.r = au.a(this.o, this.q);
        this.s = b.a(this.r);
        this.t = c.a(TvShowPresenterModule_ProvideLocaleFactory.c());
        this.u = this.t;
        this.v = ak.a(mVar.b);
        this.w = b.a(ai.a(this.s, this.d, this.u, this.v, TvShowPresenterModule_ProvideLocaleFactory.c()));
        this.x = b.a(this.w);
        this.y = b.a(al.a(this.x));
        this.z = e.a(2, 0).a(this.k).a(this.y).a();
    }

    public Set<com.twitter.app.common.di.d> b() {
        return (Set) this.z.b();
    }

    public o a() {
        return (o) this.j.b();
    }

    public ad d() {
        return (ad) this.x.b();
    }
}
