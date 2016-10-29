package com.google.android.gms.internal;

class cw implements Runnable {
    final /* synthetic */ zzk a;
    final /* synthetic */ cv b;

    cw(cv cvVar, zzk com_google_android_gms_internal_zzk) {
        this.b = cvVar;
        this.a = com_google_android_gms_internal_zzk;
    }

    public void run() {
        try {
            this.b.c.put(this.a);
        } catch (InterruptedException e) {
        }
    }
}
