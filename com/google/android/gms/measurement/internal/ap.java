package com.google.android.gms.measurement.internal;

import android.os.Looper;

class ap implements Runnable {
    final /* synthetic */ ao a;

    ap(ao aoVar) {
        this.a = aoVar;
    }

    public void run() {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            this.a.a.h().a(this);
            return;
        }
        boolean b = this.a.b();
        this.a.d = 0;
        if (b && this.a.e) {
            this.a.a();
        }
    }
}
