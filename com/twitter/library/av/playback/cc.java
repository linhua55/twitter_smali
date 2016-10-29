package com.twitter.library.av.playback;

/* compiled from: Twttr */
class cc implements Runnable {
    final /* synthetic */ int a;
    final /* synthetic */ int b;
    final /* synthetic */ cb c;

    cc(cb cbVar, int i, int i2) {
        this.c = cbVar;
        this.a = i;
        this.b = i2;
    }

    public void run() {
        this.c.a().a(this.a, this.b);
    }
}
