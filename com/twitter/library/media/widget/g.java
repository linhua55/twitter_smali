package com.twitter.library.media.widget;

import com.twitter.library.media.manager.d;

/* compiled from: Twttr */
class g implements Runnable {
    final /* synthetic */ d a;
    final /* synthetic */ f b;

    g(f fVar, d dVar) {
        this.b = fVar;
        this.a = dVar;
    }

    public void run() {
        if (this.b.a != this.b.b.s) {
            return;
        }
        if (this.a == null || this.a.a == null) {
            this.b.b.f();
        } else {
            this.b.b.a(this.a.a);
        }
    }
}
