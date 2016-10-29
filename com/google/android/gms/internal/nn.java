package com.google.android.gms.internal;

class nn implements Runnable {
    final /* synthetic */ ps a;
    final /* synthetic */ zzgq b;

    nn(zzgq com_google_android_gms_internal_zzgq, ps psVar) {
        this.b = com_google_android_gms_internal_zzgq;
        this.a = psVar;
    }

    public void run() {
        synchronized (this.b.c) {
            this.b.a(this.a);
        }
    }
}
