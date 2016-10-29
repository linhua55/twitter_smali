package com.google.android.gms.internal;

import android.os.SystemClock;

public final class vl implements vj {
    private static vl a;

    public static synchronized vj d() {
        vj vjVar;
        synchronized (vl.class) {
            if (a == null) {
                a = new vl();
            }
            vjVar = a;
        }
        return vjVar;
    }

    public long a() {
        return System.currentTimeMillis();
    }

    public long b() {
        return SystemClock.elapsedRealtime();
    }

    public long c() {
        return System.nanoTime();
    }
}
