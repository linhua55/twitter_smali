package com.google.android.gms.ads.internal.overlay;

class e implements Runnable {
    final /* synthetic */ String a;
    final /* synthetic */ String b;
    final /* synthetic */ zzc c;

    e(zzc com_google_android_gms_ads_internal_overlay_zzc, String str, String str2) {
        this.c = com_google_android_gms_ads_internal_overlay_zzc;
        this.a = str;
        this.b = str2;
    }

    public void run() {
        if (zzc.a(this.c) != null) {
            zzc.a(this.c).a(this.a, this.b);
        }
    }
}
