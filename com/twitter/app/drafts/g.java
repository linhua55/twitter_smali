package com.twitter.app.drafts;

import android.app.Activity;
import android.view.LayoutInflater;
import aom;
import aoo;
import ape;
import com.twitter.android.composer.aw;
import com.twitter.app.common.base.BaseFragmentActivity;
import com.twitter.app.common.di.d;
import com.twitter.app.common.inject.f;
import com.twitter.app.common.inject.h;
import com.twitter.app.common.inject.k;
import com.twitter.app.common.inject.t;
import com.twitter.app.common.inject.v;
import cxj;
import dagger.internal.MembersInjectors;
import dagger.internal.b;
import dagger.internal.e;
import defpackage.aon;
import defpackage.apm;
import defpackage.apu;
import defpackage.apv;
import defpackage.apw;
import java.util.Set;

/* compiled from: Twttr */
final class g implements r {
    final /* synthetic */ c a;
    private final apu b;
    private cxj<Activity> c;
    private cxj<LayoutInflater> d;
    private cxj<v> e;
    private cxj<t> f;
    private cxj<BaseFragmentActivity> g;
    private cxj<ape<aw>> h;
    private cxj<aom> i;
    private cxj<aoo> j;
    private cxj<s> k;
    private cxj<d> l;
    private cxj<Set<d>> m;
    private cxj<v> n;

    private g(c cVar, apu apu) {
        this.a = cVar;
        this.b = (apu) dagger.internal.d.a(apu);
        a();
    }

    private void a() {
        this.c = b.a(f.a(this.b));
        this.d = b.a(h.a(this.c));
        this.e = b.a(apv.a(this.b));
        this.f = b.a(k.a(this.b));
        this.g = b.a(com.twitter.app.common.inject.g.a(this.c));
        this.h = b.a(apm.a(this.g));
        this.i = b.a(aon.a(this.c));
        this.j = b.a(this.i);
        this.k = b.a(w.a(MembersInjectors.a(), this.d, this.e, this.f, this.a.h, this.h, this.j, this.a.g));
        this.l = b.a(apw.a(this.k));
        this.m = e.a(2, 0).a(this.a.i).a(this.l).a();
        this.n = b.a(this.k);
    }

    public Set<d> b() {
        return (Set) this.m.b();
    }

    public v c() {
        return (v) this.n.b();
    }
}
