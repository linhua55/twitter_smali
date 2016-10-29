package com.twitter.library.av.playback;

/* compiled from: Twttr */
class cs implements Runnable {
    final /* synthetic */ cb a;

    cs(cb cbVar) {
        this.a = cbVar;
    }

    public void run() {
        if (this.a.d) {
            this.a.d = false;
            this.a.a().i();
        }
    }
}
