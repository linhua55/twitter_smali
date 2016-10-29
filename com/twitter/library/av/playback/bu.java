package com.twitter.library.av.playback;

import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: Twttr */
class bu implements Runnable {
    final /* synthetic */ AtomicReference a;
    final /* synthetic */ CountDownLatch b;
    final /* synthetic */ bt c;

    bu(bt btVar, AtomicReference atomicReference, CountDownLatch countDownLatch) {
        this.c = btVar;
        this.a = atomicReference;
        this.b = countDownLatch;
    }

    public void run() {
        this.a.set(this.c.a());
        this.b.countDown();
    }
}
