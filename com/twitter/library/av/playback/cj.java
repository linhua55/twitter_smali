package com.twitter.library.av.playback;

/* compiled from: Twttr */
class cj implements Runnable {
    final /* synthetic */ double a;
    final /* synthetic */ cb b;

    cj(cb cbVar, double d) {
        this.b = cbVar;
        this.a = d;
    }

    public void run() {
        this.b.a().a(this.a);
    }
}
