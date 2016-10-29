package io.fabric.sdk.android.services.concurrency;

import java.util.concurrent.ThreadFactory;

/* compiled from: Twttr */
public final class t implements ThreadFactory {
    private final int a;

    public t(int i) {
        this.a = i;
    }

    public Thread newThread(Runnable runnable) {
        Thread thread = new Thread(runnable);
        thread.setPriority(this.a);
        thread.setName("Queue");
        return thread;
    }
}
