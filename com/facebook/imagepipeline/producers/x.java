package com.facebook.imagepipeline.producers;

import com.facebook.cache.common.a;
import com.facebook.imagepipeline.request.ImageRequest;
import com.facebook.imagepipeline.request.ImageRequest$ImageType;
import com.facebook.imagepipeline.request.ImageRequest$RequestLevel;
import defpackage.br;
import eb;
import eg;
import gj;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: Twttr */
public class x implements bw<gj> {
    private final eb a;
    private final eb b;
    private final eg c;
    private final bw<gj> d;

    public x(eb ebVar, eb ebVar2, eg egVar, bw<gj> bwVar) {
        this.a = ebVar;
        this.b = ebVar2;
        this.c = egVar;
        this.d = bwVar;
    }

    public void a(o<gj> oVar, bx bxVar) {
        ImageRequest a = bxVar.a();
        if (a.l()) {
            bz c = bxVar.c();
            String b = bxVar.b();
            c.a(b, "DiskCacheProducer");
            a c2 = this.c.c(a);
            eb ebVar = a.a() == ImageRequest$ImageType.a ? this.b : this.a;
            y yVar = new y(this, c, b, oVar, ebVar, c2, bxVar);
            AtomicBoolean atomicBoolean = new AtomicBoolean(false);
            ebVar.a(c2, atomicBoolean).a(yVar);
            a(atomicBoolean, bxVar);
            return;
        }
        a((o) oVar, (o) oVar, bxVar);
    }

    private void a(o<gj> oVar, o<gj> oVar2, bx bxVar) {
        if (bxVar.e().a() >= ImageRequest$RequestLevel.DISK_CACHE.a()) {
            oVar.b(null, true);
        } else {
            this.d.a(oVar2, bxVar);
        }
    }

    static Map<String, String> a(bz bzVar, String str, boolean z) {
        if (bzVar.b(str)) {
            return br.a("cached_value_found", String.valueOf(z));
        }
        return null;
    }

    private void a(AtomicBoolean atomicBoolean, bx bxVar) {
        bxVar.a(new z(this, atomicBoolean));
    }
}
