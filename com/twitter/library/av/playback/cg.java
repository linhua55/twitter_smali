package com.twitter.library.av.playback;

/* compiled from: Twttr */
class cg implements Runnable {
    final /* synthetic */ boolean a;
    final /* synthetic */ cb b;

    cg(cb cbVar, boolean z) {
        this.b = cbVar;
        this.a = z;
    }

    public void run() {
        this.b.a().a(this.a);
    }
}
