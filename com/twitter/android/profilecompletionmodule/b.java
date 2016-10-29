package com.twitter.android.profilecompletionmodule;

import com.twitter.android.profilecompletionmodule.addbio.AddBioState;
import com.twitter.android.profilecompletionmodule.addbio.a;
import com.twitter.android.profilecompletionmodule.addbirthday.AddBirthdayState;
import com.twitter.android.profilecompletionmodule.addbirthday.f;
import com.twitter.android.profilecompletionmodule.chooseavatar.ChooseAvatarState;
import com.twitter.android.profilecompletionmodule.chooseheader.ChooseHeaderState;
import com.twitter.android.profilecompletionmodule.chooseheader.e;
import com.twitter.android.profilecompletionmodule.chooselocation.ChooseLocationState;
import com.twitter.android.profilecompletionmodule.profilepreview.c;
import com.twitter.app.common.di.d;
import dagger.internal.MembersInjectors;
import defpackage.cxj;
import java.util.Set;

/* compiled from: Twttr */
public final class b implements y {
    static final /* synthetic */ boolean a;
    private cxj<a> b;
    private cxj<AddBioState> c;
    private cxj<com.twitter.android.profilecompletionmodule.addbio.b> d;
    private cxj<d> e;
    private cxj<com.twitter.android.profilecompletionmodule.addbirthday.a> f;
    private cxj<AddBirthdayState> g;
    private cxj<com.twitter.android.profilecompletionmodule.addbirthday.b> h;
    private cxj<d> i;
    private cxj<com.twitter.android.profilecompletionmodule.chooseavatar.a> j;
    private cxj<ChooseAvatarState> k;
    private cxj<com.twitter.android.profilecompletionmodule.chooseavatar.b> l;
    private cxj<d> m;
    private cxj<com.twitter.android.profilecompletionmodule.chooseheader.a> n;
    private cxj<ChooseHeaderState> o;
    private cxj<com.twitter.android.profilecompletionmodule.chooseheader.b> p;
    private cxj<d> q;
    private cxj<com.twitter.android.profilecompletionmodule.chooselocation.a> r;
    private cxj<ChooseLocationState> s;
    private cxj<com.twitter.android.profilecompletionmodule.chooselocation.b> t;
    private cxj<d> u;
    private cxj<c> v;
    private cxj<com.twitter.android.profilecompletionmodule.profilepreview.d> w;
    private cxj<d> x;
    private cxj<Set<d>> y;

    static {
        a = !b.class.desiredAssertionStatus();
    }

    private b(d dVar) {
        if (a || dVar != null) {
            a(dVar);
            return;
        }
        throw new AssertionError();
    }

    public static d a() {
        return new d();
    }

    private void a(d dVar) {
        this.b = dagger.internal.b.a(h.a(dVar.a));
        this.c = dagger.internal.b.a(i.a(dVar.a));
        this.d = dagger.internal.b.a(com.twitter.android.profilecompletionmodule.addbio.c.a(MembersInjectors.a(), this.b, this.c));
        this.e = dagger.internal.b.a(s.a(this.d));
        this.f = dagger.internal.b.a(j.a(dVar.a));
        this.g = dagger.internal.b.a(k.a(dVar.a));
        this.h = dagger.internal.b.a(f.a(MembersInjectors.a(), this.f, this.g));
        this.i = dagger.internal.b.a(t.a(this.h));
        this.j = dagger.internal.b.a(l.a(dVar.a));
        this.k = dagger.internal.b.a(m.a(dVar.a));
        this.l = dagger.internal.b.a(com.twitter.android.profilecompletionmodule.chooseavatar.d.a(MembersInjectors.a(), this.j, this.k));
        this.m = dagger.internal.b.a(u.a(this.l));
        this.n = dagger.internal.b.a(n.a(dVar.a));
        this.o = dagger.internal.b.a(o.a(dVar.a));
        this.p = dagger.internal.b.a(e.a(MembersInjectors.a(), this.n, this.o));
        this.q = dagger.internal.b.a(v.a(this.p));
        this.r = dagger.internal.b.a(p.a(dVar.a));
        this.s = dagger.internal.b.a(q.a(dVar.a));
        this.t = dagger.internal.b.a(com.twitter.android.profilecompletionmodule.chooselocation.c.a(MembersInjectors.a(), this.r, this.s));
        this.u = dagger.internal.b.a(w.a(this.t));
        this.v = dagger.internal.b.a(r.a(dVar.a));
        this.w = dagger.internal.b.a(com.twitter.android.profilecompletionmodule.profilepreview.e.a(MembersInjectors.a(), this.v));
        this.x = dagger.internal.b.a(x.a(this.w));
        this.y = dagger.internal.e.a(6, 0).a(this.e).a(this.i).a(this.m).a(this.q).a(this.u).a(this.x).a();
    }

    public Set<d> b() {
        return (Set) this.y.b();
    }

    public com.twitter.android.profilecompletionmodule.addbio.b c() {
        return (com.twitter.android.profilecompletionmodule.addbio.b) this.d.b();
    }

    public com.twitter.android.profilecompletionmodule.addbirthday.b d() {
        return (com.twitter.android.profilecompletionmodule.addbirthday.b) this.h.b();
    }

    public com.twitter.android.profilecompletionmodule.chooseavatar.b e() {
        return (com.twitter.android.profilecompletionmodule.chooseavatar.b) this.l.b();
    }

    public com.twitter.android.profilecompletionmodule.chooseheader.b f() {
        return (com.twitter.android.profilecompletionmodule.chooseheader.b) this.p.b();
    }

    public com.twitter.android.profilecompletionmodule.chooselocation.b g() {
        return (com.twitter.android.profilecompletionmodule.chooselocation.b) this.t.b();
    }

    public com.twitter.android.profilecompletionmodule.profilepreview.d h() {
        return (com.twitter.android.profilecompletionmodule.profilepreview.d) this.w.b();
    }
}
