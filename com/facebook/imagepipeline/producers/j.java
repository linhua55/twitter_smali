package com.facebook.imagepipeline.producers;

import com.facebook.common.references.a;
import com.facebook.imagepipeline.request.ImageRequest$RequestLevel;
import defpackage.br;
import eg;
import ew;
import gh;
import java.util.Map;

/* compiled from: Twttr */
public class j implements bw<a<gh>> {
    private final ew<com.facebook.cache.common.a, gh> a;
    private final eg b;
    private final bw<a<gh>> c;

    public j(ew<com.facebook.cache.common.a, gh> ewVar, eg egVar, bw<a<gh>> bwVar) {
        this.a = ewVar;
        this.b = egVar;
        this.c = bwVar;
    }

    public void a(o<a<gh>> oVar, bx bxVar) {
        Map map = null;
        bz c = bxVar.c();
        String b = bxVar.b();
        c.a(b, a());
        com.facebook.cache.common.a a = this.b.a(bxVar.a());
        a a2 = this.a.a(a);
        if (a2 != null) {
            boolean c2 = ((gh) a2.a()).g().c();
            if (c2) {
                c.a(b, a(), c.b(b) ? br.a("cached_value_found", "true") : null);
                oVar.b(1.0f);
            }
            oVar.b(a2, c2);
            a2.close();
            if (c2) {
                return;
            }
        }
        if (bxVar.e().a() >= ImageRequest$RequestLevel.BITMAP_MEMORY_CACHE.a()) {
            Map a3;
            String a4 = a();
            if (c.b(b)) {
                a3 = br.a("cached_value_found", "false");
            } else {
                a3 = null;
            }
            c.a(b, a4, a3);
            oVar.b(null, true);
            return;
        }
        o a5 = a((o) oVar, a);
        a4 = a();
        if (c.b(b)) {
            map = br.a("cached_value_found", "false");
        }
        c.a(b, a4, map);
        this.c.a(a5, bxVar);
    }

    protected o<a<gh>> a(o<a<gh>> oVar, com.facebook.cache.common.a aVar) {
        return new k(this, oVar, aVar);
    }

    protected String a() {
        return "BitmapMemoryCacheProducer";
    }
}
