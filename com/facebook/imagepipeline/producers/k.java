package com.facebook.imagepipeline.producers;

import com.facebook.common.references.a;
import gh;
import gm;

/* compiled from: Twttr */
class k extends w<a<gh>, a<gh>> {
    final /* synthetic */ com.facebook.cache.common.a a;
    final /* synthetic */ j b;

    k(j jVar, o oVar, com.facebook.cache.common.a aVar) {
        this.b = jVar;
        this.a = aVar;
        super(oVar);
    }

    public void a(a<gh> aVar, boolean z) {
        if (aVar == null) {
            if (z) {
                d().b(null, true);
            }
        } else if (((gh) aVar.a()).e()) {
            d().b(aVar, z);
        } else {
            if (!z) {
                a a = this.b.a.a(this.a);
                if (a != null) {
                    try {
                        gm g = ((gh) aVar.a()).g();
                        gm g2 = ((gh) a.a()).g();
                        if (g2.c() || g2.a() >= g.a()) {
                            d().b(a, false);
                            return;
                        }
                        a.c(a);
                    } finally {
                        a.c(a);
                    }
                }
            }
            a<gh> a2 = this.b.a.a(this.a, aVar);
            if (z) {
                try {
                    d().b(1.0f);
                } catch (Throwable th) {
                    a.c(a2);
                }
            }
            o d = d();
            if (a2 != null) {
                aVar = a2;
            }
            d.b(aVar, z);
            a.c(a2);
        }
    }
}
