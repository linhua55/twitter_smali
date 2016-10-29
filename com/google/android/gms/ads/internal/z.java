package com.google.android.gms.ads.internal;

import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;

class z implements Runnable {
    final /* synthetic */ AdOverlayInfoParcel a;
    final /* synthetic */ y b;

    z(y yVar, AdOverlayInfoParcel adOverlayInfoParcel) {
        this.b = yVar;
        this.a = adOverlayInfoParcel;
    }

    public void run() {
        ar.c().a(this.b.a.f.c, this.a);
    }
}
