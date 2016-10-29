package com.google.android.gms.internal;

class nv implements Runnable {
    final /* synthetic */ ps a;
    final /* synthetic */ nu b;

    nv(nu nuVar, ps psVar) {
        this.b = nuVar;
        this.a = psVar;
    }

    public void run() {
        nu.a(this.b).b(this.a);
    }
}
