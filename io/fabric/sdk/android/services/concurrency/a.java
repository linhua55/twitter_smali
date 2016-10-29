package io.fabric.sdk.android.services.concurrency;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: Twttr */
final class a implements ThreadFactory {
    private final AtomicInteger a;

    a() {
        this.a = new AtomicInteger(1);
    }

    public Thread newThread(Runnable runnable) {
        return new Thread(runnable, "AsyncTask #" + this.a.getAndIncrement());
    }
}
