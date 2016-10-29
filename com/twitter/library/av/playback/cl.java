package com.twitter.library.av.playback;

/* compiled from: Twttr */
class cl implements Runnable {
    final /* synthetic */ int a;
    final /* synthetic */ int b;
    final /* synthetic */ boolean c;
    final /* synthetic */ boolean d;
    final /* synthetic */ cb e;

    cl(cb cbVar, int i, int i2, boolean z, boolean z2) {
        this.e = cbVar;
        this.a = i;
        this.b = i2;
        this.c = z;
        this.d = z2;
    }

    public void run() {
        this.e.a().a(this.a, this.b, this.c, this.d);
    }
}
