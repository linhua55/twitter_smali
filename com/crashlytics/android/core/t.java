package com.crashlytics.android.core;

import java.util.concurrent.CountDownLatch;

/* compiled from: Twttr */
class t {
    private boolean a;
    private final CountDownLatch b;

    private t() {
        this.a = false;
        this.b = new CountDownLatch(1);
    }

    void a(boolean z) {
        this.a = z;
        this.b.countDown();
    }

    boolean a() {
        return this.a;
    }

    void b() {
        try {
            this.b.await();
        } catch (InterruptedException e) {
        }
    }
}
