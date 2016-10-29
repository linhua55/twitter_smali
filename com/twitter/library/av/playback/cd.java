package com.twitter.library.av.playback;

/* compiled from: Twttr */
class cd implements Runnable {
    final /* synthetic */ int a;
    final /* synthetic */ int b;
    final /* synthetic */ cb c;

    cd(cb cbVar, int i, int i2) {
        this.c = cbVar;
        this.a = i;
        this.b = i2;
    }

    public void run() {
        this.c.a().b(this.a, this.b);
    }
}
