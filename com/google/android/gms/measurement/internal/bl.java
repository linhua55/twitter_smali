package com.google.android.gms.measurement.internal;

class bl implements Runnable {
    final /* synthetic */ boolean a;
    final /* synthetic */ bk b;

    bl(bk bkVar, boolean z) {
        this.b = bkVar;
        this.a = z;
    }

    public void run() {
        this.b.b.a(this.a);
    }
}
