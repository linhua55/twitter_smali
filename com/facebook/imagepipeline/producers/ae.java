package com.facebook.imagepipeline.producers;

import com.facebook.cache.common.a;
import gj;

/* compiled from: Twttr */
class ae extends w<gj, gj> {
    final /* synthetic */ a a;
    final /* synthetic */ ad b;

    ae(ad adVar, o oVar, a aVar) {
        this.b = adVar;
        this.a = aVar;
        super(oVar);
    }

    public void a(gj gjVar, boolean z) {
        if (!z || gjVar == null) {
            d().b(gjVar, z);
            return;
        }
        gj c = gjVar.c();
        if (c != null) {
            try {
                com.facebook.common.references.a a = this.b.a.a(this.a, c);
                if (a != null) {
                    try {
                        c = new gj(a);
                        c.b(gjVar);
                        try {
                            d().b(1.0f);
                            d().b(c, true);
                            return;
                        } finally {
                            gj.d(c);
                        }
                    } finally {
                        com.facebook.common.references.a.c(a);
                    }
                }
            } finally {
                com.facebook.common.references.a.c(c);
            }
        }
        d().b(gjVar, true);
    }
}
