package com.twitter.media.service.core;

import android.os.Bundle;
import android.os.Handler;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: Twttr */
class g {
    private static final AtomicInteger h;
    public int a;
    public int b;
    public Bundle c;
    public h d;
    public Handler e;
    public boolean f;
    public Bundle g;

    static {
        h = new AtomicInteger(0);
    }

    private g(int i, Bundle bundle) {
        this.a = h.incrementAndGet();
        this.b = i;
        this.c = bundle;
    }
}
