package com.facebook.imagepipeline.producers;

import br;
import bx;
import com.facebook.common.references.a;
import gh;
import gi;
import java.util.Map;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;

/* compiled from: Twttr */
class bq extends w<a<gh>, a<gh>> {
    final /* synthetic */ bo a;
    private final bz b;
    private final String c;
    private final com.facebook.imagepipeline.request.a d;
    @GuardedBy("PostprocessorConsumer.this")
    private boolean e;
    @GuardedBy("PostprocessorConsumer.this")
    @Nullable
    private a<gh> f;
    @GuardedBy("PostprocessorConsumer.this")
    private boolean g;
    @GuardedBy("PostprocessorConsumer.this")
    private boolean h;
    @GuardedBy("PostprocessorConsumer.this")
    private boolean i;

    public bq(bo boVar, o<a<gh>> oVar, bz bzVar, String str, com.facebook.imagepipeline.request.a aVar, bx bxVar) {
        this.a = boVar;
        super(oVar);
        this.f = null;
        this.g = false;
        this.h = false;
        this.i = false;
        this.b = bzVar;
        this.c = str;
        this.d = aVar;
        bxVar.a(new br(this, boVar));
    }

    protected void a(a<gh> aVar, boolean z) {
        if (a.a((a) aVar)) {
            b(aVar, z);
        } else if (z) {
            d(null, true);
        }
    }

    protected void a(Throwable th) {
        c(th);
    }

    protected void a() {
        g();
    }

    private void b(@Nullable a<gh> aVar, boolean z) {
        synchronized (this) {
            if (this.e) {
                return;
            }
            a aVar2 = this.f;
            this.f = a.b(aVar);
            this.g = z;
            this.h = true;
            boolean f = f();
            a.c(aVar2);
            if (f) {
                c();
            }
        }
    }

    private void c() {
        bo.a(this.a).execute(new bs(this));
    }

    private void e() {
        synchronized (this) {
            this.i = false;
            boolean f = f();
        }
        if (f) {
            c();
        }
    }

    private synchronized boolean f() {
        boolean z = true;
        synchronized (this) {
            if (this.e || !this.h || this.i || !a.a(this.f)) {
                z = false;
            } else {
                this.i = true;
            }
        }
        return z;
    }

    private void c(a<gh> aVar, boolean z) {
        bx.a(a.a((a) aVar));
        if (a((gh) aVar.a())) {
            this.b.a(this.c, "PostprocessorProducer");
            a aVar2 = null;
            try {
                aVar2 = b((gh) aVar.a());
                this.b.a(this.c, "PostprocessorProducer", a(this.b, this.c, this.d));
                d(aVar2, z);
            } catch (Throwable e) {
                this.b.a(this.c, "PostprocessorProducer", e, a(this.b, this.c, this.d));
                c(e);
            } finally {
                a.c(aVar2);
            }
        } else {
            d(aVar, z);
        }
    }

    private Map<String, String> a(bz bzVar, String str, com.facebook.imagepipeline.request.a aVar) {
        if (bzVar.b(str)) {
            return br.a("Postprocessor", aVar.a());
        }
        return null;
    }

    private boolean a(gh ghVar) {
        return ghVar instanceof gi;
    }

    private a<gh> b(gh ghVar) {
        gi giVar = (gi) ghVar;
        a a = this.d.a(giVar.f(), bo.b(this.a));
        try {
            a<gh> a2 = a.a(new gi(a, ghVar.g(), giVar.h()));
            return a2;
        } finally {
            a.c(a);
        }
    }

    private void d(a<gh> aVar, boolean z) {
        if ((!z && !h()) || (z && i())) {
            d().b(aVar, z);
        }
    }

    private void c(Throwable th) {
        if (i()) {
            d().b(th);
        }
    }

    private void g() {
        if (i()) {
            d().b();
        }
    }

    private synchronized boolean h() {
        return this.e;
    }

    private boolean i() {
        boolean z = true;
        synchronized (this) {
            if (this.e) {
                z = false;
            } else {
                a aVar = this.f;
                this.f = null;
                this.e = true;
                a.c(aVar);
            }
        }
        return z;
    }
}
