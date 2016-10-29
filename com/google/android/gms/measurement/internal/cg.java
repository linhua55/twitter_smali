package com.google.android.gms.measurement.internal;

class cg implements Runnable {
    final /* synthetic */ AppMetadata a;
    final /* synthetic */ UserAttributeParcel b;
    final /* synthetic */ cc c;

    cg(cc ccVar, AppMetadata appMetadata, UserAttributeParcel userAttributeParcel) {
        this.c = ccVar;
        this.a = appMetadata;
        this.b = userAttributeParcel;
    }

    public void run() {
        this.c.a(this.a.h);
        cc.a(this.c).b(this.b, this.a);
    }
}
