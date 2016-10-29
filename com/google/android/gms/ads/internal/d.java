package com.google.android.gms.ads.internal;

import android.content.Intent;

class d implements Runnable {
    final /* synthetic */ Intent a;
    final /* synthetic */ c b;

    d(c cVar, Intent intent) {
        this.b = cVar;
        this.a = intent;
    }

    public void run() {
        int a = ar.o().a(this.a);
        ar.o();
        if (!(a != 0 || this.b.f.j == null || this.b.f.j.b == null || this.b.f.j.b.i() == null)) {
            this.b.f.j.b.i().a();
        }
        this.b.f.E = false;
    }
}
