package com.facebook.imagepipeline.producers;

import com.facebook.common.util.d;
import com.facebook.imagepipeline.request.ImageRequest;
import gj;

/* compiled from: Twttr */
class u implements am {
    final /* synthetic */ q a;
    final /* synthetic */ bx b;
    final /* synthetic */ t c;

    u(t tVar, q qVar, bx bxVar) {
        this.c = tVar;
        this.a = qVar;
        this.b = bxVar;
    }

    public void a(gj gjVar, boolean z) {
        if (gjVar != null) {
            if (this.c.b.f) {
                ImageRequest a = this.b.a();
                if (this.c.b.g || !d.a(a.b())) {
                    gjVar.d(ab.a(a, gjVar));
                }
            }
            this.c.c(gjVar, z);
        }
    }
}
