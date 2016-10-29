package com.twitter.android.moments.data;

import android.support.annotation.UiThread;
import android.support.annotation.VisibleForTesting;
import cll;
import com.twitter.util.h;
import cvq;
import defpackage.atf;
import defpackage.bmf;
import defpackage.cym;
import defpackage.cyw;
import defpackage.dbd;
import java.io.IOException;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.TimeUnit;
import rx.an;
import rx.o;
import rx.subjects.e;
import rx.t;

/* compiled from: Twttr */
public class ay implements atf<List<String>, List<cll>> {
    final be<String> a;
    private final e<List<cll>> b;
    private final t c;
    private final t d;
    private an e;
    private final bmf f;
    private final t g;
    private final int h;
    private boolean i;

    public /* synthetic */ o a_(Object obj) {
        return a((List) obj);
    }

    public static ay a(bmf bmf) {
        return new ay(30000, bmf, dbd.c(), dbd.d(), cym.a(), e.q());
    }

    @VisibleForTesting
    ay(int i, bmf bmf, t tVar, t tVar2, t tVar3, e<List<cll>> eVar) {
        this.a = new be();
        this.h = i;
        this.f = bmf;
        this.g = tVar;
        this.c = tVar2;
        this.d = tVar3;
        this.b = eVar;
        this.i = true;
    }

    private void c() {
        if (this.e == null) {
            this.e = o.a(300, (long) this.h, TimeUnit.MILLISECONDS, this.g).b(this.c).g(f()).d(cvq.b()).f(e()).a(this.d).a(this.b);
        }
    }

    @UiThread
    public void a() {
        h.a();
        this.i = true;
        a(this.e);
        this.e = null;
    }

    @UiThread
    public void b() {
        h.a();
        this.i = false;
        if (this.a.a().size() > 0) {
            c();
        }
    }

    public o<List<cll>> a(List<String> list) {
        return this.b.g(d(list)).d(cvq.b()).a(new ba(this, list)).b(new az(this, list));
    }

    @UiThread
    public void close() throws IOException {
        h.a();
        a(this.e);
        this.b.bs_();
        d();
    }

    private void a(an anVar) {
        if (anVar != null && !anVar.b()) {
            anVar.K_();
        }
    }

    private synchronized void b(List<String> list) {
        this.a.a(list);
    }

    private synchronized void c(List<String> list) {
        this.a.b(list);
    }

    private synchronized void d() {
        this.a.b();
    }

    private cyw<List<cll>, List<cll>> d(List<String> list) {
        return new bb(this, list);
    }

    private cyw<Collection<String>, o<List<cll>>> e() {
        return new bc(this);
    }

    private cyw<Long, Collection<String>> f() {
        return new bd(this);
    }
}
