package com.twitter.app.common.app;

import android.app.Application;
import android.content.Context;
import com.twitter.app.common.account.UserIdentifier;
import com.twitter.app.common.app.internal.aa;
import com.twitter.app.common.app.internal.ab;
import com.twitter.app.common.app.internal.ac;
import com.twitter.app.common.app.internal.ad;
import com.twitter.app.common.app.internal.ae;
import com.twitter.app.common.app.internal.ag;
import com.twitter.app.common.app.internal.ah;
import com.twitter.app.common.app.internal.ak;
import com.twitter.app.common.app.internal.al;
import com.twitter.app.common.app.internal.am;
import com.twitter.app.common.app.internal.ao;
import com.twitter.app.common.app.internal.s;
import com.twitter.app.common.app.internal.z;
import com.twitter.app.common.util.c;
import com.twitter.app.common.util.n;
import com.twitter.app.common.util.r;
import com.twitter.config.AppConfig;
import com.twitter.database.lru.j;
import com.twitter.database.lru.schema.LruSchema;
import com.twitter.database.lru.t;
import com.twitter.database.lru.w;
import com.twitter.database.lru.x;
import com.twitter.database.schema.DraftsSchema;
import com.twitter.database.schema.TwitterSchema;
import com.twitter.library.client.Session;
import com.twitter.library.client.az;
import com.twitter.library.client.bg;
import com.twitter.library.provider.di;
import com.twitter.library.provider.v;
import com.twitter.platform.PlatformContext;
import cwf;
import cxj;
import dagger.internal.b;
import dagger.internal.d;
import defpackage.aui;
import defpackage.auk;
import up;
import uq;

/* compiled from: Twttr */
final class f extends n {
    final /* synthetic */ c a;
    private final ag b;
    private cxj<UserIdentifier> c;
    private cxj<Session> d;
    private cxj<di> e;
    private cxj<TwitterSchema> f;
    private cxj<v> g;
    private cxj<DraftsSchema> h;
    private cxj<aui> i;
    private cxj<LruSchema> j;
    private cxj<j> k;
    private cxj<t> l;
    private cxj<x> m;
    private cxj<auk> n;
    private cxj<up> o;
    private cxj<uq> p;

    private f(c cVar, ag agVar) {
        this.a = cVar;
        this.b = (ag) d.a(agVar);
        u();
    }

    private void u() {
        this.c = b.a(ao.a(this.b));
        this.d = b.a(ah.a(this.c, c.l(this.a)));
        this.e = b.a(ad.a(c.f(this.a), this.c));
        this.f = b.a(ae.a(this.e));
        this.g = b.a(z.a(c.f(this.a), this.c));
        this.h = b.a(aa.a(this.g));
        this.i = b.a(ab.a(c.f(this.a), this.c));
        this.j = b.a(ac.a(this.i));
        this.k = b.a(ak.a(this.j));
        this.l = w.a(this.j);
        this.m = b.a(am.a(this.k, this.l));
        this.n = b.a(al.a(this.m));
        this.o = b.a(s.a(c.f(this.a), this.d));
        this.p = b.a(com.twitter.app.common.app.internal.t.a(this.o));
    }

    public cwf j() {
        return (cwf) c.a(this.a).b();
    }

    public PlatformContext k() {
        return (PlatformContext) c.b(this.a).b();
    }

    public com.twitter.platform.t l() {
        return (com.twitter.platform.t) c.c(this.a).b();
    }

    public AppConfig m() {
        return (AppConfig) c.d(this.a).b();
    }

    public Application b() {
        return (Application) c.e(this.a).b();
    }

    public Context c() {
        return (Context) c.f(this.a).b();
    }

    public c d() {
        return (c) c.g(this.a).b();
    }

    public com.twitter.app.common.util.f e() {
        return (com.twitter.app.common.util.f) c.h(this.a).b();
    }

    public n f() {
        return (n) c.i(this.a).b();
    }

    public r g() {
        return (r) c.j(this.a).b();
    }

    public com.twitter.app.common.account.d h() {
        return (com.twitter.app.common.account.d) c.k(this.a).b();
    }

    public bg n() {
        return (bg) c.l(this.a).b();
    }

    public az o() {
        return (az) c.m(this.a).b();
    }

    public Session a() {
        return (Session) this.d.b();
    }

    public di i() {
        return (di) this.e.b();
    }

    public DraftsSchema p() {
        return (DraftsSchema) this.h.b();
    }

    public auk q() {
        return (auk) this.n.b();
    }

    public uq r() {
        return (uq) this.p.b();
    }
}
