package com.facebook.imagepipeline.animated.base;

import defpackage.cb;

/* compiled from: Twttr */
class e implements Runnable {
    final /* synthetic */ b a;

    e(b bVar) {
        this.a = bVar;
    }

    public void run() {
        cb.a(b.a, "(%s) Invalidate Task", this.a.j);
        this.a.A = false;
        this.a.h();
    }
}
