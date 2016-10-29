package com.twitter.library.av.playback;

/* compiled from: Twttr */
class ad implements Runnable {
    final /* synthetic */ ac a;

    ad(ac acVar) {
        this.a = acVar;
    }

    public void run() {
        if (this.a.b.r() && !this.a.f.get()) {
            this.a.a.a(this.a.b.C());
        }
    }
}
