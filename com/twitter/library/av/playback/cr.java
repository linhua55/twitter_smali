package com.twitter.library.av.playback;

/* compiled from: Twttr */
class cr implements Runnable {
    final /* synthetic */ cb a;

    cr(cb cbVar) {
        this.a = cbVar;
    }

    public void run() {
        if (!this.a.d) {
            this.a.d = true;
            this.a.a().h();
        }
    }
}
