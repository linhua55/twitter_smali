package com.facebook.imagepipeline.producers;

import com.facebook.cache.common.a;
import eb;
import g;
import gj;
import h;
import java.util.concurrent.CancellationException;

/* compiled from: Twttr */
class y implements g<gj, Void> {
    final /* synthetic */ bz a;
    final /* synthetic */ String b;
    final /* synthetic */ o c;
    final /* synthetic */ eb d;
    final /* synthetic */ a e;
    final /* synthetic */ bx f;
    final /* synthetic */ x g;

    y(x xVar, bz bzVar, String str, o oVar, eb ebVar, a aVar, bx bxVar) {
        this.g = xVar;
        this.a = bzVar;
        this.b = str;
        this.c = oVar;
        this.d = ebVar;
        this.e = aVar;
        this.f = bxVar;
    }

    public /* synthetic */ Object a(h hVar) throws Exception {
        return b(hVar);
    }

    public Void b(h<gj> hVar) throws Exception {
        if (hVar.c() || (hVar.d() && (hVar.f() instanceof CancellationException))) {
            this.a.b(this.b, "DiskCacheProducer", null);
            this.c.b();
        } else if (hVar.d()) {
            this.a.a(this.b, "DiskCacheProducer", hVar.f(), null);
            this.g.a(this.c, new aa(this.c, this.d, this.e, null), this.f);
        } else {
            gj gjVar = (gj) hVar.e();
            if (gjVar != null) {
                this.a.a(this.b, "DiskCacheProducer", x.a(this.a, this.b, true));
                this.c.b(1.0f);
                this.c.b(gjVar, true);
                gjVar.close();
            } else {
                this.a.a(this.b, "DiskCacheProducer", x.a(this.a, this.b, false));
                this.g.a(this.c, new aa(this.c, this.d, this.e, null), this.f);
            }
        }
        return null;
    }
}
