package com.google.android.gms.measurement.internal;

class z implements Runnable {
    final /* synthetic */ long a;
    final /* synthetic */ u b;

    z(u uVar, long j) {
        this.b = uVar;
        this.a = j;
    }

    public void run() {
        this.b.a(this.a);
    }
}
