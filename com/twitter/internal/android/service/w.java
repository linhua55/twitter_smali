package com.twitter.internal.android.service;

import java.util.concurrent.atomic.AtomicLong;

/* compiled from: Twttr */
public abstract class w implements Runnable {
    private static final AtomicLong a;
    public final int c;
    public final long d;

    static {
        a = new AtomicLong(0);
    }

    protected w(int i) {
        this.c = i;
        this.d = a.incrementAndGet();
    }
}
