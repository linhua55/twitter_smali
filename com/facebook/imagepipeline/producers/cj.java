package com.facebook.imagepipeline.producers;

import android.util.Pair;
import defpackage.bx;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executor;
import javax.annotation.concurrent.GuardedBy;

/* compiled from: Twttr */
public class cj<T> implements bw<T> {
    private final bw<T> a;
    private final int b;
    @GuardedBy("this")
    private int c;
    @GuardedBy("this")
    private final ConcurrentLinkedQueue<Pair<o<T>, bx>> d;
    private final Executor e;

    public cj(int i, Executor executor, bw<T> bwVar) {
        this.b = i;
        this.e = (Executor) bx.a((Object) executor);
        this.a = (bw) bx.a((Object) bwVar);
        this.d = new ConcurrentLinkedQueue();
        this.c = 0;
    }

    public void a(o<T> oVar, bx bxVar) {
        Object obj;
        bxVar.c().a(bxVar.b(), "ThrottlingProducer");
        synchronized (this) {
            if (this.c >= this.b) {
                this.d.add(Pair.create(oVar, bxVar));
                obj = 1;
            } else {
                this.c++;
                obj = null;
            }
        }
        if (obj == null) {
            b(oVar, bxVar);
        }
    }

    void b(o<T> oVar, bx bxVar) {
        bxVar.c().a(bxVar.b(), "ThrottlingProducer", null);
        this.a.a(new cl(this, oVar, null), bxVar);
    }
}
