package com.twitter.android.livevideo.landing.di;

import android.app.Activity;
import android.content.Context;
import com.twitter.android.composer.aw;
import com.twitter.android.livevideo.landing.LiveVideoLandingActivity;
import com.twitter.android.livevideo.landing.c;
import com.twitter.android.media.selection.MediaAttachmentController;
import com.twitter.app.common.base.BaseFragmentActivity;
import com.twitter.app.common.base.n;
import com.twitter.app.common.di.d;
import com.twitter.app.common.inject.f;
import com.twitter.app.common.inject.g;
import com.twitter.app.common.inject.k;
import com.twitter.app.common.inject.t;
import com.twitter.app.common.inject.v;
import com.twitter.app.common.list.h;
import com.twitter.library.client.Session;
import com.twitter.library.client.az;
import com.twitter.library.scribe.TwitterScribeItem;
import cwk;
import dagger.internal.MembersInjectors;
import dagger.internal.b;
import dagger.internal.e;
import defpackage.abo;
import defpackage.abp;
import defpackage.abq;
import defpackage.abr;
import defpackage.abt;
import defpackage.ape;
import defpackage.cxj;
import java.util.Set;

/* compiled from: Twttr */
public final class a implements k {
    static final /* synthetic */ boolean a;
    private cxj<Activity> b;
    private cxj<BaseFragmentActivity> c;
    private cxj<t> d;
    private cxj<n> e;
    private cxj<Session> f;
    private cxj<MediaAttachmentController> g;
    private cxj<abt> h;
    private cxj<com.twitter.android.livevideo.landing.a> i;
    private cxj<h> j;
    private cxj<com.twitter.android.livevideo.player.a> k;
    private cxj<c> l;
    private cxj<v> m;
    private cxj<Context> n;
    private cxj<abr> o;
    private cxj<az> p;
    private cxj<ape<aw>> q;
    private cxj<abp> r;
    private cxj<abo> s;
    private cxj<TwitterScribeItem> t;
    private cwk<LiveVideoLandingActivity> u;

    static {
        a = !a.class.desiredAssertionStatus();
    }

    private a(e eVar) {
        if (a || eVar != null) {
            a(eVar);
            return;
        }
        throw new AssertionError();
    }

    public static e a() {
        return new e();
    }

    private void a(e eVar) {
        this.b = b.a(f.a(eVar.a));
        this.c = b.a(g.a(this.b));
        this.d = b.a(k.a(eVar.a));
        this.e = b.a(q.a(eVar.a));
        this.f = new b(this, eVar);
        this.g = b.a(p.a(eVar.a, this.f));
        this.h = b.a(m.a(eVar.a));
        this.i = b.a(o.a(eVar.a));
        this.j = b.a(r.a(eVar.a, this.i));
        this.k = com.twitter.android.livevideo.player.b.a(MembersInjectors.a());
        this.l = b.a(com.twitter.android.livevideo.landing.g.a(MembersInjectors.a(), this.c, this.d, this.e, this.g, this.h, this.j, this.k));
        this.m = b.a(this.l);
        this.n = new c(this, eVar);
        this.o = b.a(n.a(this.l));
        this.p = new d(this, eVar);
        this.q = b.a(s.a(eVar.a));
        this.r = abq.a(this.n, this.o, this.g, this.f, this.p, this.q);
        this.s = b.a(this.r);
        this.t = b.a(t.a(eVar.a));
        this.u = com.twitter.android.livevideo.landing.b.a(this.l, this.s, this.g, this.i, this.t);
    }

    public Set<d> b() {
        return (Set) e.a().b();
    }

    public v c() {
        return (v) this.m.b();
    }

    public void a(LiveVideoLandingActivity liveVideoLandingActivity) {
        this.u.a(liveVideoLandingActivity);
    }
}
