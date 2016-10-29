package com.facebook.imagepipeline.producers;

import defpackage.bx;
import java.util.concurrent.Executor;

/* compiled from: Twttr */
public class cg<T> implements bw<T> {
    private final Executor a;
    private final bw<T> b;

    public cg(Executor executor, bw<T> bwVar) {
        this.a = (Executor) bx.a((Object) executor);
        this.b = (bw) bx.a((Object) bwVar);
    }

    public void a(o<T> oVar, bx bxVar) {
        bz c = bxVar.c();
        String b = bxVar.b();
        Runnable chVar = new ch(this, oVar, c, "BackgroundThreadHandoffProducer", b, c, b, oVar, bxVar);
        bxVar.a(new ci(this, chVar));
        this.a.execute(chVar);
    }
}
