package com.google.android.gms.ads.internal.request;

import com.google.android.gms.internal.qw;
import com.google.android.gms.internal.so;

class f implements Runnable {
    final /* synthetic */ so a;
    final /* synthetic */ zzb b;

    f(zzb com_google_android_gms_ads_internal_request_zzb, so soVar) {
        this.b = com_google_android_gms_ads_internal_request_zzb;
        this.a = soVar;
    }

    public void run() {
        synchronized (zzb.a(this.b)) {
            this.b.a = this.b.a(zzb.b(this.b).j, this.a);
            if (this.b.a == null) {
                zzb.a(this.b, 0, "Could not start the ad request service.");
                qw.a.removeCallbacks(zzb.c(this.b));
            }
        }
    }
}
