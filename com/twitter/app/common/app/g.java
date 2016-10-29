package com.twitter.app.common.app;

import android.app.Application;
import android.content.Context;
import com.twitter.app.common.account.UserIdentifier;
import com.twitter.app.common.app.internal.an;
import com.twitter.app.common.app.internal.ao;
import com.twitter.app.common.util.c;
import com.twitter.app.common.util.f;
import com.twitter.app.common.util.n;
import com.twitter.app.common.util.r;
import com.twitter.config.AppConfig;
import com.twitter.platform.PlatformContext;
import com.twitter.platform.t;
import cwf;
import cxj;
import dagger.internal.b;
import dagger.internal.d;

/* compiled from: Twttr */
final class g extends o {
    final /* synthetic */ c a;
    private final an b;
    private cxj<UserIdentifier> c;

    private g(c cVar, an anVar) {
        this.a = cVar;
        this.b = (an) d.a(anVar);
        a();
    }

    private void a() {
        this.c = b.a(ao.a(this.b));
    }

    public cwf j() {
        return (cwf) c.a(this.a).b();
    }

    public PlatformContext k() {
        return (PlatformContext) c.b(this.a).b();
    }

    public t l() {
        return (t) c.c(this.a).b();
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

    public f e() {
        return (f) c.h(this.a).b();
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
}
