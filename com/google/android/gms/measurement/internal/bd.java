package com.google.android.gms.measurement.internal;

class bd implements Runnable {
    final /* synthetic */ String a;
    final /* synthetic */ bc b;

    bd(bc bcVar, String str) {
        this.b = bcVar;
        this.a = str;
    }

    public void run() {
        bn e = this.b.n.e();
        if (!e.E() || e.F()) {
            this.b.a(6, "Persisted config not initialized . Not logging error/warn.");
        } else {
            e.b.a(this.a);
        }
    }
}
