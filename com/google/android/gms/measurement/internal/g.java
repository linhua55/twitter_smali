package com.google.android.gms.measurement.internal;

class g implements Runnable {
    final /* synthetic */ String a;
    final /* synthetic */ String b;
    final /* synthetic */ Object c;
    final /* synthetic */ long d;
    final /* synthetic */ d e;

    g(d dVar, String str, String str2, Object obj, long j) {
        this.e = dVar;
        this.a = str;
        this.b = str2;
        this.c = obj;
        this.d = j;
    }

    public void run() {
        this.e.a(this.a, this.b, this.c, this.d);
    }
}
