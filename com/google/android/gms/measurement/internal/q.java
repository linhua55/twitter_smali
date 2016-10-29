package com.google.android.gms.measurement.internal;

class q implements Runnable {
    final /* synthetic */ ax a;
    final /* synthetic */ p b;

    q(p pVar, ax axVar) {
        this.b = pVar;
        this.a = axVar;
    }

    public void run() {
        synchronized (this.b) {
            this.b.b = false;
            if (!this.b.a.b()) {
                this.b.a.s().z().a("Connected to service");
                this.b.a.a(this.a);
            }
        }
    }
}
