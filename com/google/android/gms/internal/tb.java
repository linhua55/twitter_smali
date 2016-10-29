package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.overlay.zzd;

class tb implements Runnable {
    final /* synthetic */ ta a;

    tb(ta taVar) {
        this.a = taVar;
    }

    public void run() {
        this.a.a.y();
        zzd i = this.a.a.i();
        if (i != null) {
            i.m();
        }
        if (ta.d(this.a) != null) {
            ta.d(this.a).a();
            ta.a(this.a, null);
        }
    }
}
