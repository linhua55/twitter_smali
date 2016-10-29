package com.google.android.gms.ads.internal.request;

class ag implements Runnable {
    final /* synthetic */ ab a;

    ag(ab abVar) {
        this.a = abVar;
    }

    public void run() {
        if (ab.b(this.a) != null) {
            ab.b(this.a).a();
            ab.a(this.a, null);
        }
    }
}
