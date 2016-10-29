package io.fabric.sdk.android.services.common;

import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicLong;

/* compiled from: Twttr */
final class t implements ThreadFactory {
    final /* synthetic */ String a;
    final /* synthetic */ AtomicLong b;

    t(String str, AtomicLong atomicLong) {
        this.a = str;
        this.b = atomicLong;
    }

    public Thread newThread(Runnable runnable) {
        Thread newThread = Executors.defaultThreadFactory().newThread(new u(this, runnable));
        newThread.setName(this.a + this.b.getAndIncrement());
        return newThread;
    }
}
