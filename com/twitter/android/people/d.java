package com.twitter.android.people;

import akj;
import akp;
import akq;
import akt;
import aku;
import akv;
import ala;
import android.content.Context;
import cby;
import com.twitter.android.people.adapters.ModuleItemMapper_Factory;
import com.twitter.android.yj;
import com.twitter.database.lru.ac;
import com.twitter.library.client.Session;
import com.twitter.library.client.az;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.library.util.FriendshipCache;
import com.twitter.model.people.ag;
import cxj;
import dagger.internal.MembersInjectors;
import dagger.internal.b;
import dagger.internal.e;
import defpackage.auk;
import java.util.Set;

/* compiled from: Twttr */
public final class d implements aj {
    static final /* synthetic */ boolean a;
    private cxj<Context> b;
    private cxj<Session> c;
    private cxj<cby> d;
    private cxj<FriendshipCache> e;
    private cxj<akp> f;
    private cxj<ala> g;
    private cxj<akv> h;
    private cxj<auk> i;
    private cxj<ac<String, ag>> j;
    private cxj<akt> k;
    private cxj<akj> l;
    private cxj<com.twitter.android.people.adapters.ag> m;
    private cxj<q> n;
    private cxj<x> o;
    private cxj<v> p;
    private cxj<com.twitter.app.common.di.d> q;
    private cxj<Set<com.twitter.app.common.di.d>> r;
    private cxj<TwitterScribeAssociation> s;
    private cxj<bb> t;
    private cxj<az> u;
    private cxj<yj> v;
    private cxj<com.twitter.android.people.adapters.viewbinders.d> w;

    static {
        a = !d.class.desiredAssertionStatus();
    }

    private d(i iVar) {
        if (a || iVar != null) {
            a(iVar);
            return;
        }
        throw new AssertionError();
    }

    public static i a() {
        return new i();
    }

    private void a(i iVar) {
        this.b = new e(this, iVar);
        this.c = new f(this, iVar);
        this.d = b.a(ac.a(this.b, this.c));
        this.e = b.a(ModulesPresenterModule_ProvideFriendshipCacheFactory.c());
        this.f = b.a(ab.a(iVar.a));
        this.g = b.a(ag.a(this.b, this.c));
        this.h = b.a(ae.a(this.b, this.c));
        this.i = new g(this, iVar);
        this.j = b.a(p.a(this.i));
        this.k = b.a(aku.a(MembersInjectors.a(), this.b, this.c, this.j));
        this.l = b.a(akq.a(this.e, this.f, this.g, this.h, this.k, this.j));
        this.m = b.a(ModuleItemMapper_Factory.c());
        this.n = b.a(u.a(this.d, this.l, this.m));
        this.o = b.a(z.a(this.d, this.n, this.e));
        this.p = b.a(this.o);
        this.q = b.a(ai.a(this.p));
        this.r = e.a(1, 0).a(this.q).a();
        this.s = b.a(af.a(this.n));
        this.t = b.a(ad.a(this.c, this.s));
        this.u = new h(this, iVar);
        this.v = b.a(ah.a(this.s, this.e, this.c, this.u));
        this.w = b.a(this.o);
    }

    public Set<com.twitter.app.common.di.d> b() {
        return (Set) this.r.b();
    }

    public v c() {
        return (v) this.p.b();
    }

    public ak a(ar arVar) {
        return new j(this, arVar, null);
    }
}
