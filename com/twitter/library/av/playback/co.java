package com.twitter.library.av.playback;

/* compiled from: Twttr */
class co implements Runnable {
    final /* synthetic */ int a;
    final /* synthetic */ String b;
    final /* synthetic */ cb c;

    co(cb cbVar, int i, String str) {
        this.c = cbVar;
        this.a = i;
        this.b = str;
    }

    public void run() {
        this.c.a().a(this.a, this.b);
    }
}
