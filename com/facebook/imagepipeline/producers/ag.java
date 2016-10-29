package com.facebook.imagepipeline.producers;

import gj;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* compiled from: Twttr */
public class ag extends e<af> {
    private final ExecutorService a;

    public ag() {
        this.a = Executors.newFixedThreadPool(3);
    }

    public af a(o<gj> oVar, bx bxVar) {
        return new af(oVar, bxVar);
    }

    public void a(af afVar, bk bkVar) {
        afVar.b().a(new ai(this, this.a.submit(new ah(this, afVar, bkVar)), bkVar));
    }
}
