package com.facebook.imagepipeline.animated.impl;

import java.util.concurrent.Callable;

/* compiled from: Twttr */
class f implements Callable<Object> {
    final /* synthetic */ int a;
    final /* synthetic */ c b;

    f(c cVar, int i) {
        this.b = cVar;
        this.a = i;
    }

    public Object call() {
        this.b.h(this.a);
        return null;
    }
}
