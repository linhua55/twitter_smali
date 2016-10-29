package com.google.android.gms.ads.internal.formats;

import com.google.android.gms.internal.sz;

class s implements Runnable {
    final /* synthetic */ j a;
    final /* synthetic */ r b;

    s(r rVar, j jVar) {
        this.b = rVar;
        this.a = jVar;
    }

    public void run() {
        sz d = this.a.d();
        if (d != null) {
            r.a(this.b).addView(d.b());
        }
    }
}
