package com.google.android.gms.measurement.internal;

class ce implements Runnable {
    final /* synthetic */ AppMetadata a;
    final /* synthetic */ EventParcel b;
    final /* synthetic */ cc c;

    ce(cc ccVar, AppMetadata appMetadata, EventParcel eventParcel) {
        this.c = ccVar;
        this.a = appMetadata;
        this.b = eventParcel;
    }

    public void run() {
        this.c.a(this.a.h);
        cc.a(this.c).a(this.b, this.a);
    }
}
