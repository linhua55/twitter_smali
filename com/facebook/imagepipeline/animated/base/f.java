package com.facebook.imagepipeline.animated.base;

import defpackage.cb;

/* compiled from: Twttr */
class f implements Runnable {
    final /* synthetic */ b a;

    f(b bVar) {
        this.a = bVar;
    }

    public void run() {
        cb.a(b.a, "(%s) Watchdog Task", this.a.j);
        this.a.g();
    }
}
