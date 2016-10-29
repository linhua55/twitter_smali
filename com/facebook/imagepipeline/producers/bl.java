package com.facebook.imagepipeline.producers;

import com.facebook.common.references.a;
import com.facebook.imagepipeline.request.ImageRequest;
import com.facebook.imagepipeline.request.b;
import defpackage.br;
import eg;
import ew;
import gh;
import java.util.Map;

/* compiled from: Twttr */
public class bl implements bw<a<gh>> {
    private final ew<com.facebook.cache.common.a, gh> a;
    private final eg b;
    private final bw<a<gh>> c;

    public bl(ew<com.facebook.cache.common.a, gh> ewVar, eg egVar, bw<a<gh>> bwVar) {
        this.a = ewVar;
        this.b = egVar;
        this.c = bwVar;
    }

    public void a(o<a<gh>> oVar, bx bxVar) {
        Map map = null;
        bz c = bxVar.c();
        String b = bxVar.b();
        ImageRequest a = bxVar.a();
        com.facebook.imagepipeline.request.a n = a.n();
        if (n == null) {
            this.c.a(oVar, bxVar);
            return;
        }
        com.facebook.cache.common.a b2;
        a a2;
        c.a(b, a());
        if (n.b() != null) {
            b2 = this.b.b(a);
            a2 = this.a.a(b2);
        } else {
            a2 = null;
            b2 = null;
        }
        if (a2 != null) {
            Map a3;
            String a4 = a();
            if (c.b(b)) {
                a3 = br.a("cached_value_found", "true");
            } else {
                a3 = null;
            }
            c.a(b, a4, a3);
            oVar.b(1.0f);
            oVar.b(a2, true);
            a2.close();
            return;
        }
        o bmVar = new bm(oVar, b2, n instanceof b, n.getClass().getName(), this.a);
        String a5 = a();
        if (c.b(b)) {
            map = br.a("cached_value_found", "false");
        }
        c.a(b, a5, map);
        this.c.a(bmVar, bxVar);
    }

    protected String a() {
        return "PostprocessedBitmapMemoryCacheProducer";
    }
}
