package com.google.android.gms.measurement.internal;

import android.support.annotation.MainThread;

class v implements Runnable {
    final /* synthetic */ u a;

    v(u uVar) {
        this.a = uVar;
    }

    @MainThread
    public void run() {
        this.a.r().a(new w(this));
    }
}
