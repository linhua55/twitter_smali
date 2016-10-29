package com.google.android.gms.ads.internal.request;

class e implements Runnable {
    final /* synthetic */ zzb a;

    e(zzb com_google_android_gms_ads_internal_request_zzb) {
        this.a = com_google_android_gms_ads_internal_request_zzb;
    }

    public void run() {
        synchronized (zzb.a(this.a)) {
            if (this.a.a == null) {
                return;
            }
            this.a.b();
            zzb.a(this.a, 2, "Timed out waiting for ad response.");
        }
    }
}
