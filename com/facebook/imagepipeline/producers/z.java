package com.facebook.imagepipeline.producers;

import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: Twttr */
class z extends g {
    final /* synthetic */ AtomicBoolean a;
    final /* synthetic */ x b;

    z(x xVar, AtomicBoolean atomicBoolean) {
        this.b = xVar;
        this.a = atomicBoolean;
    }

    public void a() {
        this.a.set(true);
    }
}
