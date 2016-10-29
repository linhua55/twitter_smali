package com.google.android.gms.ads.internal;

import com.google.android.gms.ads.internal.formats.e;
import com.google.android.gms.internal.qd;

class am implements Runnable {
    final /* synthetic */ e a;
    final /* synthetic */ aj b;

    am(aj ajVar, e eVar) {
        this.b = ajVar;
        this.a = eVar;
    }

    public void run() {
        try {
            this.b.f.t.a(this.a);
        } catch (Throwable e) {
            qd.d("Could not call OnContentAdLoadedListener.onContentAdLoaded().", e);
        }
    }
}
