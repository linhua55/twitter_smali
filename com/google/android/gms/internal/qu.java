package com.google.android.gms.internal;

import java.util.concurrent.Future;

final class qu implements Runnable {
    final /* synthetic */ sg a;
    final /* synthetic */ Future b;

    qu(sg sgVar, Future future) {
        this.a = sgVar;
        this.b = future;
    }

    public void run() {
        if (this.a.isCancelled()) {
            this.b.cancel(true);
        }
    }
}
