package com.facebook.imagepipeline.producers;

import com.facebook.cache.common.a;
import com.facebook.imagepipeline.memory.PooledByteBuffer;
import com.facebook.imagepipeline.request.ImageRequest$RequestLevel;
import defpackage.br;
import eg;
import ew;
import gj;
import java.util.Map;

/* compiled from: Twttr */
public class ad implements bw<gj> {
    private final ew<a, PooledByteBuffer> a;
    private final eg b;
    private final bw<gj> c;

    public ad(ew<a, PooledByteBuffer> ewVar, eg egVar, bw<gj> bwVar) {
        this.a = ewVar;
        this.b = egVar;
        this.c = bwVar;
    }

    public void a(o<gj> oVar, bx bxVar) {
        Map map = null;
        String b = bxVar.b();
        bz c = bxVar.c();
        c.a(b, "EncodedMemoryCacheProducer");
        a c2 = this.b.c(bxVar.a());
        com.facebook.common.references.a a = this.a.a(c2);
        if (a != null) {
            gj gjVar;
            try {
                gjVar = new gj(a);
                String str = "EncodedMemoryCacheProducer";
                if (c.b(b)) {
                    map = br.a("cached_value_found", "true");
                }
                c.a(b, str, map);
                oVar.b(1.0f);
                oVar.b(gjVar, true);
                gj.d(gjVar);
                com.facebook.common.references.a.c(a);
            } catch (Throwable th) {
                com.facebook.common.references.a.c(a);
            }
        } else if (bxVar.e().a() >= ImageRequest$RequestLevel.ENCODED_MEMORY_CACHE.a()) {
            r3 = "EncodedMemoryCacheProducer";
            if (c.b(b)) {
                map = br.a("cached_value_found", "false");
            }
            c.a(b, r3, map);
            oVar.b(null, true);
            com.facebook.common.references.a.c(a);
        } else {
            o aeVar = new ae(this, oVar, c2);
            r3 = "EncodedMemoryCacheProducer";
            if (c.b(b)) {
                map = br.a("cached_value_found", "false");
            }
            c.a(b, r3, map);
            this.c.a(aeVar, bxVar);
            com.facebook.common.references.a.c(a);
        }
    }
}
