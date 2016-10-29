package com.google.android.gms.measurement.internal;

class cf implements Runnable {
    final /* synthetic */ String a;
    final /* synthetic */ EventParcel b;
    final /* synthetic */ String c;
    final /* synthetic */ cc d;

    cf(cc ccVar, String str, EventParcel eventParcel, String str2) {
        this.d = ccVar;
        this.a = str;
        this.b = eventParcel;
        this.c = str2;
    }

    public void run() {
        this.d.a(this.a);
        cc.a(this.d).a(this.b, this.c);
    }
}
