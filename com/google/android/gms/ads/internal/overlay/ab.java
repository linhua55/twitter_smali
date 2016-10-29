package com.google.android.gms.ads.internal.overlay;

import com.google.android.gms.internal.oi;
import com.google.android.gms.internal.qw;

@oi
class ab implements Runnable {
    private zzk a;
    private boolean b;

    ab(zzk com_google_android_gms_ads_internal_overlay_zzk) {
        this.b = false;
        this.a = com_google_android_gms_ads_internal_overlay_zzk;
    }

    public void a() {
        this.b = true;
        qw.a.removeCallbacks(this);
    }

    public void b() {
        qw.a.postDelayed(this, 250);
    }

    public void run() {
        if (!this.b) {
            this.a.n();
            b();
        }
    }
}
