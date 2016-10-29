package com.facebook.imagepipeline.producers;

import com.facebook.cache.common.a;
import eb;
import gj;

/* compiled from: Twttr */
class aa extends w<gj, gj> {
    final /* synthetic */ x a;
    private final eb b;
    private final a c;

    private aa(x xVar, o<gj> oVar, eb ebVar, a aVar) {
        this.a = xVar;
        super(oVar);
        this.b = ebVar;
        this.c = aVar;
    }

    public void a(gj gjVar, boolean z) {
        if (gjVar != null && z) {
            this.b.a(this.c, gjVar);
        }
        d().b(gjVar, z);
    }
}
