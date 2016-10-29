package com.twitter.library.client;

import android.os.Handler;
import android.os.Looper;

/* compiled from: Twttr */
public class ax {
    private final Runnable a;
    private final Handler b;

    public ax(Runnable runnable, long j) {
        this.a = new ay(this, runnable, j);
        this.b = new Handler(Looper.getMainLooper());
    }

    public void a() {
        a(0);
    }

    public void a(long j) {
        b();
        b(j);
    }

    public void b() {
        this.b.removeCallbacks(this.a);
    }

    void b(long j) {
        this.b.postDelayed(this.a, j);
    }
}
