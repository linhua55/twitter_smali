package com.google.android.gms.ads.internal;

import com.google.android.gms.internal.ps;
import com.google.android.gms.internal.pt;

class g implements Runnable {
    final /* synthetic */ pt a;
    final /* synthetic */ e b;

    g(e eVar, pt ptVar) {
        this.b = eVar;
        this.a = ptVar;
    }

    public void run() {
        this.b.b(new ps(this.a, null, null, null, null, null, null));
    }
}
