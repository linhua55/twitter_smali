package com.google.android.gms.ads.internal;

import com.google.android.gms.ads.internal.formats.d;
import com.google.android.gms.internal.qd;

class al implements Runnable {
    final /* synthetic */ d a;
    final /* synthetic */ aj b;

    al(aj ajVar, d dVar) {
        this.b = ajVar;
        this.a = dVar;
    }

    public void run() {
        try {
            this.b.f.s.a(this.a);
        } catch (Throwable e) {
            qd.d("Could not call OnAppInstallAdLoadedListener.onAppInstallAdLoaded().", e);
        }
    }
}
