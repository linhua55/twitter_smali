package com.google.android.gms.ads.internal.overlay;

class g implements Runnable {
    final /* synthetic */ zzc a;

    g(zzc com_google_android_gms_ads_internal_overlay_zzc) {
        this.a = com_google_android_gms_ads_internal_overlay_zzc;
    }

    public void run() {
        if (zzc.a(this.a) != null) {
            zzc.a(this.a).d();
            zzc.a(this.a).f();
        }
    }
}