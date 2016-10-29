package com.facebook.imagepipeline.producers;

import android.graphics.Bitmap;
import com.facebook.common.references.a;
import defpackage.br;
import gh;
import gi;
import gj;
import gl;
import gm;
import java.util.Map;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;

/* compiled from: Twttr */
abstract class t extends w<gj, a<gh>> {
    private final bx a;
    final /* synthetic */ q b;
    private final bz c;
    private final com.facebook.imagepipeline.common.a d;
    @GuardedBy("this")
    private boolean e;
    private final JobScheduler f;

    protected abstract int a(gj gjVar);

    protected abstract gm c();

    public /* synthetic */ void a(Object obj, boolean z) {
        b((gj) obj, z);
    }

    public t(q qVar, o<a<gh>> oVar, bx bxVar) {
        this.b = qVar;
        super(oVar);
        this.a = bxVar;
        this.c = bxVar.c();
        this.d = bxVar.a().f();
        this.e = false;
        this.f = new JobScheduler(qVar.b, new u(this, qVar, bxVar), this.d.a);
        this.a.a(new v(this, qVar));
    }

    public void b(gj gjVar, boolean z) {
        if (z && !gj.e(gjVar)) {
            c(new NullPointerException("Encoded image is not valid."));
        } else if (!a(gjVar, z)) {
        } else {
            if (z || this.a.h()) {
                this.f.b();
            }
        }
    }

    public void a(Throwable th) {
        c(th);
    }

    public void a() {
        f();
    }

    protected boolean a(gj gjVar, boolean z) {
        return this.f.a(gjVar, z);
    }

    private void c(gj gjVar, boolean z) {
        long c;
        gm c2;
        gh ghVar;
        if (!e() && gj.e(gjVar)) {
            try {
                c = this.f.c();
                int j = z ? gjVar.j() : a(gjVar);
                c2 = z ? gl.a : c();
                this.c.a(this.a.b(), "DecodeProducer");
                ghVar = null;
                ghVar = this.b.c.a(gjVar, j, c2, this.d);
                this.c.a(this.a.b(), "DecodeProducer", a(ghVar, c, c2, z));
                a(ghVar, z);
            } catch (Throwable e) {
                Throwable th = e;
                this.c.a(this.a.b(), "DecodeProducer", th, a(ghVar, c, c2, z));
                c(th);
            } finally {
                gj.d(gjVar);
            }
        }
    }

    private Map<String, String> a(@Nullable gh ghVar, long j, gm gmVar, boolean z) {
        if (!this.c.b(this.a.b())) {
            return null;
        }
        String valueOf = String.valueOf(j);
        String valueOf2 = String.valueOf(gmVar.b());
        String valueOf3 = String.valueOf(z);
        if (!(ghVar instanceof gi)) {
            return br.a("queueTime", valueOf, "hasGoodQuality", valueOf2, "isFinal", valueOf3);
        }
        Bitmap f = ((gi) ghVar).f();
        return br.a("bitmapSize", f.getWidth() + "x" + f.getHeight(), "queueTime", valueOf, "hasGoodQuality", valueOf2, "isFinal", valueOf3);
    }

    private synchronized boolean e() {
        return this.e;
    }

    private void a(boolean z) {
        synchronized (this) {
            if (z) {
                if (!this.e) {
                    this.e = true;
                    this.f.a();
                    return;
                }
            }
        }
    }

    private void a(gh ghVar, boolean z) {
        a a = a.a(ghVar);
        try {
            a(z);
            d().b(a, z);
        } finally {
            a.c(a);
        }
    }

    private void c(Throwable th) {
        a(true);
        d().b(th);
    }

    private void f() {
        a(true);
        d().b();
    }
}
