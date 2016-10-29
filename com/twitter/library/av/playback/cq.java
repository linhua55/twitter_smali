package com.twitter.library.av.playback;

/* compiled from: Twttr */
class cq implements Runnable {
    final /* synthetic */ AVPlayer$PlayerStartType a;
    final /* synthetic */ cb b;

    cq(cb cbVar, AVPlayer$PlayerStartType aVPlayer$PlayerStartType) {
        this.b = cbVar;
        this.a = aVPlayer$PlayerStartType;
    }

    public void run() {
        this.b.a().a(this.a);
    }
}
