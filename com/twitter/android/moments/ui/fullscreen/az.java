package com.twitter.android.moments.ui.fullscreen;

/* compiled from: Twttr */
class az implements Runnable {
    final /* synthetic */ ay a;

    az(ay ayVar) {
        this.a = ayVar;
    }

    public void run() {
        if (this.a.c.a(this.a.b.getCurrentItem()) > 0) {
            ((as) this.a.a.get(0)).b();
            this.a.a.remove(0);
        }
    }
}
