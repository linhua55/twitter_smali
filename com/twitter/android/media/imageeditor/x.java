package com.twitter.android.media.imageeditor;

/* compiled from: Twttr */
class x implements Runnable {
    final /* synthetic */ v a;

    x(v vVar) {
        this.a = vVar;
    }

    public void run() {
        if (this.a.e.h.l.getVisibility() == 0) {
            this.a.e.a();
        }
    }
}
