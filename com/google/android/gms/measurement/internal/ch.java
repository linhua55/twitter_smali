package com.google.android.gms.measurement.internal;

class ch implements Runnable {
    final /* synthetic */ AppMetadata a;
    final /* synthetic */ UserAttributeParcel b;
    final /* synthetic */ cc c;

    ch(cc ccVar, AppMetadata appMetadata, UserAttributeParcel userAttributeParcel) {
        this.c = ccVar;
        this.a = appMetadata;
        this.b = userAttributeParcel;
    }

    public void run() {
        this.c.a(this.a.h);
        cc.a(this.c).a(this.b, this.a);
    }
}
