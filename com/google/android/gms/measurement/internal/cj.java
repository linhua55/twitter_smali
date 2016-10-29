package com.google.android.gms.measurement.internal;

class cj implements Runnable {
    final /* synthetic */ AppMetadata a;
    final /* synthetic */ cc b;

    cj(cc ccVar, AppMetadata appMetadata) {
        this.b = ccVar;
        this.a = appMetadata;
    }

    public void run() {
        this.b.a(this.a.h);
        cc.a(this.b).b(this.a);
    }
}
