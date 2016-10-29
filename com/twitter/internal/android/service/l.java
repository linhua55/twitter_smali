package com.twitter.internal.android.service;

import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* compiled from: Twttr */
class l {
    private final Map<Integer, Runnable> a;
    private int b;

    l() {
        this.a = new ConcurrentHashMap();
        this.b = 0;
    }

    public void a(Runnable runnable) {
        a(1, runnable);
    }

    public void a() {
        a(1);
    }

    public void b(Runnable runnable) {
        a(2, runnable);
    }

    public void b() {
        a(2);
    }

    private void a(int i, Runnable runnable) {
        synchronized (this) {
            Object obj = i <= this.b ? 1 : null;
            if (obj == null) {
                this.a.put(Integer.valueOf(i), runnable);
            }
        }
        if (obj != null && runnable != null) {
            runnable.run();
        }
    }

    private void a(int i) {
        synchronized (this) {
            if (i > this.b) {
                this.b = i;
            }
            Runnable runnable = (Runnable) this.a.remove(Integer.valueOf(i));
        }
        if (runnable != null) {
            runnable.run();
        }
    }
}
