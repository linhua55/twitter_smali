package com.google.android.gms.ads.internal;

import com.google.android.gms.internal.ps;
import com.google.android.gms.internal.pt;

class ak implements Runnable {
    final /* synthetic */ pt a;
    final /* synthetic */ aj b;

    ak(aj ajVar, pt ptVar) {
        this.b = ajVar;
        this.a = ptVar;
    }

    public void run() {
        this.b.b(new ps(this.a, null, null, null, null, null, null));
    }
}
