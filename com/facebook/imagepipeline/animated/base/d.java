package com.facebook.imagepipeline.animated.base;

import defpackage.cb;

/* compiled from: Twttr */
class d implements Runnable {
    final /* synthetic */ b a;

    d(b bVar) {
        this.a = bVar;
    }

    public void run() {
        cb.a(b.a, "(%s) Next Frame Task", this.a.j);
        this.a.e();
    }
}
