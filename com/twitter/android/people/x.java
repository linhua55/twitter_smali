package com.twitter.android.people;

import cby;
import com.twitter.android.people.adapters.i;
import com.twitter.app.common.di.InjectionScope;
import com.twitter.library.util.FriendshipCache;
import com.twitter.util.collection.n;
import cvi;
import cym;
import defpackage.chd;
import rx.an;
import rx.t;

/* compiled from: Twttr */
public class x implements v {
    protected final q a;
    private final cby b;
    private final FriendshipCache c;
    private Iterable<i> d;
    private final boolean e;
    private w f;
    private an g;
    private boolean h;
    private boolean i;

    public x(cby cby, q qVar, FriendshipCache friendshipCache) {
        this.d = n.g();
        this.b = cby;
        this.a = qVar;
        this.e = qVar.a();
        this.c = friendshipCache;
        e();
    }

    private void e() {
        if (this.g != null) {
            this.g.K_();
        }
        this.h = true;
        this.g = this.a.b().a(c()).b(new y(this));
    }

    public void a() {
        e();
    }

    t c() {
        return cym.a();
    }

    public void a(w wVar) {
        this.f = wVar;
        f();
    }

    private void f() {
        if (this.f != null) {
            this.f.a(this.h ? null : new chd(this.d));
        }
    }

    public void a(InjectionScope injectionScope) {
        if (injectionScope == InjectionScope.RETAINED) {
            if (this.g != null) {
                this.g.K_();
                this.g = null;
            }
            cvi.a(this.a);
            this.b.a();
        } else if (injectionScope == InjectionScope.VIEW) {
            this.f = null;
        }
    }

    public void d() {
        this.b.a(true);
        this.a.c();
    }

    public boolean b() {
        return this.i;
    }
}
