package com.twitter.util;

import android.os.Handler;
import android.os.Looper;

/* compiled from: Twttr */
public class s {
    private final Handler a;

    public s(Looper looper) {
        this.a = new Handler(looper);
    }

    public void a(Runnable runnable) {
        this.a.post(runnable);
    }

    public void a(Runnable runnable, long j) {
        this.a.postDelayed(runnable, j);
    }

    public void b(Runnable runnable) {
        this.a.removeCallbacksAndMessages(runnable);
    }

    public static s a() {
        return new s(Looper.getMainLooper());
    }
}
