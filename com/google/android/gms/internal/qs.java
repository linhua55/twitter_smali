package com.google.android.gms.internal;

import java.util.concurrent.Callable;

final class qs implements Callable<Void> {
    final /* synthetic */ Runnable a;

    qs(Runnable runnable) {
        this.a = runnable;
    }

    public Void a() {
        this.a.run();
        return null;
    }

    public /* synthetic */ Object call() throws Exception {
        return a();
    }
}
