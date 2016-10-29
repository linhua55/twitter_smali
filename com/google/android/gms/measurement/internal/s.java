package com.google.android.gms.measurement.internal;

class s implements Runnable {
    final /* synthetic */ ax a;
    final /* synthetic */ p b;

    s(p pVar, ax axVar) {
        this.b = pVar;
        this.a = axVar;
    }

    public void run() {
        synchronized (this.b) {
            this.b.b = false;
            if (!this.b.a.b()) {
                this.b.a.s().y().a("Connected to remote service");
                this.b.a.a(this.a);
            }
        }
    }
}
