package com.facebook.imagepipeline.producers;

import com.facebook.common.references.a;
import com.facebook.imagepipeline.memory.ad;
import gj;

/* compiled from: Twttr */
class co extends cf<gj> {
    final /* synthetic */ gj b;
    final /* synthetic */ cn c;

    co(cn cnVar, o oVar, bz bzVar, String str, String str2, gj gjVar) {
        this.c = cnVar;
        this.b = gjVar;
        super(oVar, bzVar, str, str2);
    }

    protected /* synthetic */ void a(Object obj) {
        b((gj) obj);
    }

    protected /* synthetic */ void b(Object obj) {
        a((gj) obj);
    }

    protected /* synthetic */ Object c() throws Exception {
        return d();
    }

    protected gj d() throws Exception {
        a a;
        ad b = this.c.b.b();
        try {
            cn.b(this.b, b);
            a = a.a(b.c());
            gj gjVar = new gj(a);
            gjVar.b(this.b);
            a.c(a);
            b.close();
            return gjVar;
        } catch (Throwable th) {
            b.close();
        }
    }

    protected void a(gj gjVar) {
        gj.d(gjVar);
    }

    protected void b(gj gjVar) {
        gj.d(this.b);
        super.a((Object) gjVar);
    }

    protected void a(Exception exception) {
        gj.d(this.b);
        super.a(exception);
    }

    protected void b() {
        gj.d(this.b);
        super.b();
    }
}
