package com.facebook.imagepipeline.producers;

import com.facebook.common.references.a;
import com.facebook.imagepipeline.bitmaps.g;
import com.facebook.imagepipeline.request.b;
import defpackage.bx;
import gh;
import java.util.concurrent.Executor;

/* compiled from: Twttr */
public class bo implements bw<a<gh>> {
    private final bw<a<gh>> a;
    private final g b;
    private final Executor c;

    public bo(bw<a<gh>> bwVar, g gVar, Executor executor) {
        this.a = (bw) bx.a((Object) bwVar);
        this.b = gVar;
        this.c = (Executor) bx.a((Object) executor);
    }

    public void a(o<a<gh>> oVar, bx bxVar) {
        o btVar;
        bz c = bxVar.c();
        com.facebook.imagepipeline.request.a n = bxVar.a().n();
        bq bqVar = new bq(this, oVar, c, bxVar.b(), n, bxVar);
        if (n instanceof b) {
            btVar = new bt(this, bqVar, (b) n, bxVar, null);
        } else {
            btVar = new bv(this, bqVar, null);
        }
        this.a.a(btVar, bxVar);
    }
}
