package com.google.android.gms.internal;

class ty implements Runnable {
    final /* synthetic */ String a;
    final /* synthetic */ long b;
    final /* synthetic */ zzk c;

    ty(zzk com_google_android_gms_internal_zzk, String str, long j) {
        this.c = com_google_android_gms_internal_zzk;
        this.a = str;
        this.b = j;
    }

    public void run() {
        zzk.b(this.c).a(this.a, this.b);
        zzk.b(this.c).a(toString());
    }
}
