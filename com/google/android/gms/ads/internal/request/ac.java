package com.google.android.gms.ads.internal.request;

import com.google.android.gms.internal.pt;

class ac implements Runnable {
    final /* synthetic */ pt a;
    final /* synthetic */ ab b;

    ac(ab abVar, pt ptVar) {
        this.b = abVar;
        this.a = ptVar;
    }

    public void run() {
        ab.a(this.b).a(this.a);
        if (ab.b(this.b) != null) {
            ab.b(this.b).a();
            ab.a(this.b, null);
        }
    }
}
