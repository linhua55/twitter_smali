package com.twitter.library.api.upload;

import com.twitter.internal.network.HttpOperation;
import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: Twttr */
class o implements Runnable {
    final /* synthetic */ HttpOperation a;
    final /* synthetic */ AtomicBoolean b;
    final /* synthetic */ n c;

    o(n nVar, HttpOperation httpOperation, AtomicBoolean atomicBoolean) {
        this.c = nVar;
        this.a = httpOperation;
        this.b = atomicBoolean;
    }

    public void run() {
        this.a.b();
        this.b.set(true);
    }
}
