package com.facebook.imagepipeline.producers;

import com.facebook.imagepipeline.request.ImageRequest;
import gj;

/* compiled from: Twttr */
class au extends cf<gj> {
    final /* synthetic */ ImageRequest b;
    final /* synthetic */ at c;

    au(at atVar, o oVar, bz bzVar, String str, String str2, ImageRequest imageRequest) {
        this.c = atVar;
        this.b = imageRequest;
        super(oVar, bzVar, str, str2);
    }

    protected /* synthetic */ void b(Object obj) {
        a((gj) obj);
    }

    protected /* synthetic */ Object c() throws Exception {
        return d();
    }

    protected gj d() throws Exception {
        gj a = this.c.a(this.b);
        if (a == null) {
            return null;
        }
        a.k();
        return a;
    }

    protected void a(gj gjVar) {
        gj.d(gjVar);
    }
}
