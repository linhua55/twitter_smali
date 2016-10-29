package com.google.android.gms.measurement.internal;

import android.os.Bundle;

class f implements Runnable {
    final /* synthetic */ String a;
    final /* synthetic */ String b;
    final /* synthetic */ long c;
    final /* synthetic */ Bundle d;
    final /* synthetic */ boolean e;
    final /* synthetic */ String f;
    final /* synthetic */ d g;

    f(d dVar, String str, String str2, long j, Bundle bundle, boolean z, String str3) {
        this.g = dVar;
        this.a = str;
        this.b = str2;
        this.c = j;
        this.d = bundle;
        this.e = z;
        this.f = str3;
    }

    public void run() {
        this.g.b(this.a, this.b, this.c, this.d, this.e, this.f);
    }
}
