package com.twitter.library.av.playback;

/* compiled from: Twttr */
class d implements Runnable {
    final /* synthetic */ boolean a;
    final /* synthetic */ int b;
    final /* synthetic */ c c;

    d(c cVar, boolean z, int i) {
        this.c = cVar;
        this.a = z;
        this.b = i;
    }

    public void run() {
        this.c.a.onPlayerStateChanged(this.a, this.b);
    }
}
