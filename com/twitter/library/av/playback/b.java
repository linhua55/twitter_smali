package com.twitter.library.av.playback;

/* compiled from: Twttr */
class b implements Runnable {
    final /* synthetic */ a a;

    b(a aVar) {
        this.a = aVar;
    }

    public void run() {
        a.a(this.a).release();
    }
}
