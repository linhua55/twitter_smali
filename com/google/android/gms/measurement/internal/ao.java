package com.google.android.gms.measurement.internal;

import android.os.Handler;
import com.google.android.gms.common.internal.bm;

abstract class ao {
    private static volatile Handler b;
    private final bx a;
    private final Runnable c;
    private volatile long d;
    private boolean e;

    ao(bx bxVar) {
        bm.a(bxVar);
        this.a = bxVar;
        this.e = true;
        this.c = new ap(this);
    }

    private Handler d() {
        if (b != null) {
            return b;
        }
        Handler handler;
        synchronized (ao.class) {
            if (b == null) {
                b = new Handler(this.a.p().getMainLooper());
            }
            handler = b;
        }
        return handler;
    }

    public abstract void a();

    public void a(long j) {
        c();
        if (j >= 0) {
            this.d = this.a.q().a();
            if (!d().postDelayed(this.c, j)) {
                this.a.f().b().a("Failed to schedule delayed post. time", Long.valueOf(j));
            }
        }
    }

    public boolean b() {
        return this.d != 0;
    }

    public void c() {
        this.d = 0;
        d().removeCallbacks(this.c);
    }
}
