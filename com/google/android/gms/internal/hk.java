package com.google.android.gms.internal;

class hk implements Runnable {
    final /* synthetic */ hl a;
    final /* synthetic */ hm b;
    final /* synthetic */ gn c;

    hk(gn gnVar, hl hlVar, hm hmVar) {
        this.c = gnVar;
        this.a = hlVar;
        this.b = hmVar;
    }

    public void run() {
        try {
            this.a.a(this.b);
        } catch (Throwable e) {
            qd.d("Could not propagate interstitial ad event.", e);
        }
    }
}
