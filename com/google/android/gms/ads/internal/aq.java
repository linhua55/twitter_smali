package com.google.android.gms.ads.internal;

import android.os.Handler;

public class aq {
    private final Handler a;

    public aq(Handler handler) {
        this.a = handler;
    }

    public void a(Runnable runnable) {
        this.a.removeCallbacks(runnable);
    }

    public boolean a(Runnable runnable, long j) {
        return this.a.postDelayed(runnable, j);
    }
}
