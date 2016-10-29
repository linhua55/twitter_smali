package com.facebook.imagepipeline.producers;

import com.facebook.imagepipeline.request.ImageRequest;
import gj;

/* compiled from: Twttr */
class n extends w<gj, gj> {
    final /* synthetic */ l a;
    private bx b;

    private n(l lVar, o<gj> oVar, bx bxVar) {
        this.a = lVar;
        super(oVar);
        this.b = bxVar;
    }

    protected void a(gj gjVar, boolean z) {
        ImageRequest a = this.b.a();
        boolean a2 = a(gjVar, a);
        if (gjVar != null && (a2 || a.i())) {
            o d = d();
            boolean z2 = z && a2;
            d.b(gjVar, z2);
        }
        if (z && !a2) {
            this.a.b.a(d(), this.b);
        }
    }

    protected void a(Throwable th) {
        this.a.b.a(d(), this.b);
    }

    private boolean a(gj gjVar, ImageRequest imageRequest) {
        if (gjVar != null && gjVar.g() >= imageRequest.c() && gjVar.h() >= imageRequest.d()) {
            return true;
        }
        return false;
    }
}
