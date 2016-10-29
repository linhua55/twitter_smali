package com.google.android.gms.internal;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

final class qv implements ThreadFactory {
    final /* synthetic */ String a;
    private final AtomicInteger b;

    qv(String str) {
        this.a = str;
        this.b = new AtomicInteger(1);
    }

    public Thread newThread(Runnable runnable) {
        return new Thread(runnable, "AdWorker(" + this.a + ") #" + this.b.getAndIncrement());
    }
}
