package com.twitter.app.common.app;

import android.accounts.AccountManager;
import android.app.Application;
import android.content.ContentResolver;
import android.content.Context;
import com.twitter.app.common.account.d;
import com.twitter.app.common.app.internal.ApplicationModule_ProvideLeakedServiceTrackerFactory;
import com.twitter.app.common.app.internal.TwitterClientModule_ProvideSessionManagerFactory;
import com.twitter.app.common.app.internal.ag;
import com.twitter.app.common.app.internal.an;
import com.twitter.app.common.app.internal.e;
import com.twitter.app.common.app.internal.g;
import com.twitter.app.common.app.internal.h;
import com.twitter.app.common.app.internal.i;
import com.twitter.app.common.app.internal.j;
import com.twitter.app.common.app.internal.k;
import com.twitter.app.common.app.internal.l;
import com.twitter.app.common.app.internal.m;
import com.twitter.app.common.app.internal.o;
import com.twitter.app.common.app.internal.p;
import com.twitter.app.common.app.internal.q;
import com.twitter.app.common.app.internal.x;
import com.twitter.app.common.util.f;
import com.twitter.app.common.util.n;
import com.twitter.app.common.util.r;
import com.twitter.config.AppConfig;
import com.twitter.library.client.az;
import com.twitter.library.client.bg;
import com.twitter.platform.PlatformContext;
import com.twitter.platform.t;
import cwk;
import dagger.internal.b;
import defpackage.aog;
import defpackage.aoh;
import defpackage.aok;
import defpackage.cwf;
import defpackage.cxj;

/* compiled from: Twttr */
public final class c extends l {
    static final /* synthetic */ boolean a;
    private cxj<Application> b;
    private cxj<Context> c;
    private cxj<cwf> d;
    private cxj<PlatformContext> e;
    private cxj<t> f;
    private cxj<AppConfig> g;
    private cxj<ContentResolver> h;
    private cxj<com.twitter.app.common.util.c> i;
    private cxj<f> j;
    private cxj<n> k;
    private cxj<r> l;
    private cxj<AccountManager> m;
    private cxj<d> n;
    private cxj<bg> o;
    private cxj<az> p;
    private cxj<aoh> q;
    private cxj<aog> r;
    private cxj<aok> s;
    private cwk<InjectedApplication> t;

    static {
        a = !c.class.desiredAssertionStatus();
    }

    private c(e eVar) {
        if (a || eVar != null) {
            a(eVar);
            return;
        }
        throw new AssertionError();
    }

    public static e i() {
        return new e();
    }

    private void a(e eVar) {
        this.b = b.a(g.a(eVar.a));
        this.c = b.a(i.a(this.b));
        this.d = b.a(l.a(this.c));
        this.e = b.a(k.a(this.c));
        this.f = b.a(m.a(this.e));
        this.g = b.a(e.a(eVar.a));
        this.h = b.a(h.a(this.c));
        this.i = b.a(com.twitter.app.common.app.internal.c.a(this.b));
        this.j = b.a(com.twitter.app.common.app.internal.f.a(this.i));
        this.k = b.a(j.a(this.i));
        this.l = b.a(ApplicationModule_ProvideLeakedServiceTrackerFactory.c());
        this.m = b.a(com.twitter.app.common.app.internal.b.a(this.c));
        this.n = b.a(com.twitter.app.common.app.internal.d.a(eVar.a, this.m));
        this.o = b.a(TwitterClientModule_ProvideSessionManagerFactory.c());
        this.p = b.a(x.a(this.c));
        this.q = b.a(q.a(eVar.b, this.c, this.f));
        this.r = b.a(p.a(eVar.b));
        this.s = b.a(o.a(eVar.b));
        this.t = i.a(this.q, this.r, this.s);
    }

    public cwf j() {
        return (cwf) this.d.b();
    }

    public PlatformContext k() {
        return (PlatformContext) this.e.b();
    }

    public t l() {
        return (t) this.f.b();
    }

    public AppConfig m() {
        return (AppConfig) this.g.b();
    }

    public Application b() {
        return (Application) this.b.b();
    }

    public Context c() {
        return (Context) this.c.b();
    }

    public com.twitter.app.common.util.c d() {
        return (com.twitter.app.common.util.c) this.i.b();
    }

    public f e() {
        return (f) this.j.b();
    }

    public n f() {
        return (n) this.k.b();
    }

    public r g() {
        return (r) this.l.b();
    }

    public d h() {
        return (d) this.n.b();
    }

    public bg n() {
        return (bg) this.o.b();
    }

    public az o() {
        return (az) this.p.b();
    }

    public void a(InjectedApplication injectedApplication) {
        this.t.a(injectedApplication);
    }

    public o a(an anVar) {
        return new g(this, anVar, null);
    }

    public n a(ag agVar) {
        return new f(this, agVar, null);
    }
}
