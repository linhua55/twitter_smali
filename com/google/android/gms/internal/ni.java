package com.google.android.gms.internal;

class ni implements Runnable {
    final /* synthetic */ nh a;

    ni(nh nhVar) {
        this.a = nhVar;
    }

    public void run() {
        if (nh.a(this.a).get()) {
            qd.b("Timed out waiting for WebView to finish loading.");
            this.a.d();
        }
    }
}
