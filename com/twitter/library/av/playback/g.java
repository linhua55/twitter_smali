package com.twitter.library.av.playback;

/* compiled from: Twttr */
class g implements Runnable {
    final /* synthetic */ c a;

    g(c cVar) {
        this.a = cVar;
    }

    public void run() {
        this.a.a.onPlayerSeekComplete();
    }
}
