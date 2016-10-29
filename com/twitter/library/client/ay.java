package com.twitter.library.client;

/* compiled from: Twttr */
class ay implements Runnable {
    final /* synthetic */ Runnable a;
    final /* synthetic */ long b;
    final /* synthetic */ ax c;

    ay(ax axVar, Runnable runnable, long j) {
        this.c = axVar;
        this.a = runnable;
        this.b = j;
    }

    public void run() {
        this.a.run();
        this.c.b(this.b);
    }
}
