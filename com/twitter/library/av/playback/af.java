package com.twitter.library.av.playback;

/* compiled from: Twttr */
class af implements Runnable {
    final /* synthetic */ AVPlayer$PlayerStartType a;
    final /* synthetic */ ac b;

    af(ac acVar, AVPlayer$PlayerStartType aVPlayer$PlayerStartType) {
        this.b = acVar;
        this.a = aVPlayer$PlayerStartType;
    }

    public void run() {
        this.b.a.a(this.a);
    }
}
