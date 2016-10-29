package com.twitter.android.alerts.landing;

import android.content.Context;
import android.os.Bundle;
import android.support.annotation.VisibleForTesting;
import com.twitter.library.client.Session;
import com.twitter.library.service.x;
import cys;
import cyw;
import dbd;
import dbg;
import defpackage.bff;
import defpackage.bfh;
import defpackage.cgd;
import rx.o;
import rx.r;
import rx.subjects.e;
import rx.t;
import sj;

/* compiled from: Twttr */
public class l {
    private final Context a;
    private final Session b;
    private final sj c;
    private final long d;
    private final e<cgd> e;
    private final t f;
    private final dbg g;
    private final cyw<bff, cgd> h;
    private final cys<? super cgd> i;
    private final r<cgd> j;
    private final cyw<? super cgd, Boolean> k;
    private boolean l;

    public l(Context context, Session session, long j, sj sjVar) {
        this(context, session, j, sjVar, dbd.d());
    }

    @VisibleForTesting
    l(Context context, Session session, long j, sj sjVar, t tVar) {
        this.e = e.q();
        this.g = new dbg();
        this.h = new m(this);
        this.i = new n(this);
        this.j = new o(this);
        this.k = new p(this);
        this.a = context;
        this.b = session;
        this.d = j;
        this.c = sjVar;
        this.f = tVar;
    }

    public o<cgd> a() {
        return this.e;
    }

    public void b() {
        this.e.bs_();
        this.g.K_();
    }

    public void a(Bundle bundle) {
        if (bundle != null) {
            this.l = bundle.getBoolean("is_data_requested", false);
        }
    }

    public x c() {
        this.l = true;
        bfh bfh = new bfh(this.a, this.b, this.d);
        a(bfh.b());
        return bfh;
    }

    public boolean d() {
        return this.l;
    }

    public void a(boolean z) {
        this.l = z;
    }

    public void b(Bundle bundle) {
        bundle.putBoolean("is_data_requested", this.l);
    }

    public void e() {
        this.g.a(this.c.a(this.d).d(this.k).b(this.f).a(this.j));
    }

    void a(o<bff> oVar) {
        o a = this.c.a(this.d);
        this.g.a(o.a(oVar.g(this.h).d(this.k).a(this.i).f(a), a).h().a(this.j));
    }
}
