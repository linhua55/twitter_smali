package com.google.android.gms.internal;

import com.google.android.gms.common.internal.bm;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

public class vy implements ThreadFactory {
    private final String a;
    private final int b;
    private final AtomicInteger c;
    private final ThreadFactory d;

    public vy(String str) {
        this(str, 0);
    }

    public vy(String str, int i) {
        this.c = new AtomicInteger();
        this.d = Executors.defaultThreadFactory();
        this.a = (String) bm.a(str, "Name must not be null");
        this.b = i;
    }

    public Thread newThread(Runnable runnable) {
        Thread newThread = this.d.newThread(new vz(runnable, this.b));
        newThread.setName(this.a + "[" + this.c.getAndIncrement() + "]");
        return newThread;
    }
}
