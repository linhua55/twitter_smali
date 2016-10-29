package com.twitter.util.concurrent;

/* compiled from: Twttr */
class g implements Runnable {
    final /* synthetic */ e a;
    final /* synthetic */ Object b;
    final /* synthetic */ f c;

    g(f fVar, e eVar, Object obj) {
        this.c = fVar;
        this.a = eVar;
        this.b = obj;
    }

    public void run() {
        this.a.a(this.b);
    }
}
