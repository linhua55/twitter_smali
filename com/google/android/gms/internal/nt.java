package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.ab;
import java.util.concurrent.CountDownLatch;

class nt implements Runnable {
    final /* synthetic */ CountDownLatch a;
    final /* synthetic */ ns b;

    nt(ns nsVar, CountDownLatch countDownLatch) {
        this.b = nsVar;
        this.a = countDownLatch;
    }

    public void run() {
        synchronized (this.b.d) {
            ns.a(this.b, ab.a(ns.a(this.b), this.b.g, this.a));
        }
    }
}
