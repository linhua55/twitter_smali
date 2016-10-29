package com.twitter.android.people;

import android.app.Activity;
import android.view.LayoutInflater;
import com.twitter.android.FollowFlowController;
import com.twitter.android.people.adapters.a;
import com.twitter.android.people.adapters.aq;
import com.twitter.android.people.adapters.f;
import com.twitter.android.people.adapters.o;
import com.twitter.android.people.adapters.q;
import com.twitter.android.people.adapters.viewbinders.DividerViewBinder_Factory;
import com.twitter.android.people.adapters.viewbinders.FooterViewBinder_Factory;
import com.twitter.android.people.adapters.viewbinders.ab;
import com.twitter.android.people.adapters.viewbinders.ac;
import com.twitter.android.people.adapters.viewbinders.af;
import com.twitter.android.people.adapters.viewbinders.am;
import com.twitter.android.people.adapters.viewbinders.an;
import com.twitter.android.people.adapters.viewbinders.ao;
import com.twitter.android.people.adapters.viewbinders.ar;
import com.twitter.android.people.adapters.viewbinders.at;
import com.twitter.android.people.adapters.viewbinders.au;
import com.twitter.android.people.adapters.viewbinders.h;
import com.twitter.android.people.adapters.viewbinders.m;
import com.twitter.android.people.adapters.viewbinders.p;
import com.twitter.android.people.adapters.viewbinders.x;
import com.twitter.android.people.adapters.viewbinders.z;
import com.twitter.android.people.adapters.w;
import com.twitter.android.people.adapters.y;
import com.twitter.app.common.inject.i;
import com.twitter.app.common.inject.k;
import com.twitter.app.common.inject.v;
import com.twitter.app.common.list.t;
import com.twitter.app.common.util.StateSaver;
import com.twitter.model.core.as;
import com.twitter.model.people.aa;
import cxj;
import dagger.internal.MembersInjectors;
import dagger.internal.b;
import dagger.internal.d;
import java.util.Set;

/* compiled from: Twttr */
final class j implements ak {
    final /* synthetic */ d a;
    private final ar b;
    private cxj<Activity> c;
    private cxj<LayoutInflater> d;
    private cxj<t> e;
    private cxj<com.twitter.app.common.inject.t> f;
    private cxj<StateSaver<h<String, a, o>>> g;
    private cxj<m> h;
    private cxj<FollowFlowController> i;
    private cxj<ac> j;
    private cxj<p> k;
    private cxj<am> l;
    private cxj<StateSaver<h<com.twitter.model.people.am, at, y>>> m;
    private cxj<ar> n;
    private cxj<com.twitter.app.common.util.t> o;
    private cxj<StateSaver<h<aa, f, q>>> p;
    private cxj<com.twitter.android.people.adapters.viewbinders.q> q;
    private cxj<com.twitter.android.people.adapters.viewbinders.a> r;
    private cxj<z> s;
    private cxj<StateSaver<h<as, aq, w>>> t;
    private cxj<ao> u;
    private cxj<com.twitter.android.people.adapters.viewbinders.y> v;
    private cxj<ap> w;
    private cxj<al> x;
    private cxj<v> y;

    private j(d dVar, ar arVar) {
        this.a = dVar;
        this.b = (ar) d.a(arVar);
        a();
    }

    private void a() {
        this.c = b.a(com.twitter.app.common.inject.f.a(this.b));
        this.d = b.a(com.twitter.app.common.inject.h.a(this.c));
        this.e = b.a(av.a(this.b));
        this.f = b.a(k.a(this.b));
        this.g = b.a(as.a(this.b));
        this.h = b.a(com.twitter.android.people.adapters.viewbinders.o.a(MembersInjectors.a(), this.a.t, this.g));
        this.i = b.a(au.a(this.a.b));
        this.j = b.a(af.a(this.c, this.i, this.a.t));
        this.k = b.a(DividerViewBinder_Factory.c());
        this.l = b.a(an.a(this.a.e, this.a.v, this.a.t));
        this.m = b.a(ax.a(this.b));
        this.n = b.a(au.a(MembersInjectors.a(), this.a.e, this.a.v, this.a.t, this.m));
        this.o = b.a(i.a(this.c));
        this.p = b.a(at.a(this.b));
        this.q = b.a(x.a(MembersInjectors.a(), this.a.b, this.a.v, this.o, this.a.t, this.p));
        this.r = b.a(com.twitter.android.people.adapters.viewbinders.f.a(MembersInjectors.a(), this.c, this.i, this.a.w, this.a.t));
        this.s = b.a(ab.a(MembersInjectors.a()));
        this.t = b.a(aw.a(this.b));
        this.u = b.a(com.twitter.android.people.adapters.viewbinders.aq.a(MembersInjectors.a(), this.a.t, this.t));
        this.v = b.a(FooterViewBinder_Factory.c());
        this.w = b.a(ay.a(this.h, this.j, this.k, this.l, this.n, this.q, this.r, this.s, this.u, this.v));
        this.x = b.a(aq.a(MembersInjectors.a(), this.a.b, this.d, this.e, this.f, this.a.p, this.c, this.a.t, this.w));
        this.y = b.a(this.x);
    }

    public Set<com.twitter.app.common.di.d> b() {
        return (Set) this.a.r.b();
    }

    public v c() {
        return (v) this.y.b();
    }
}
