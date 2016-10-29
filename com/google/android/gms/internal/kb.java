package com.google.android.gms.internal;

class kb implements Runnable {
    final /* synthetic */ ju a;
    final /* synthetic */ ka b;

    kb(ka kaVar, ju juVar) {
        this.b = kaVar;
        this.a = juVar;
    }

    public void run() {
        try {
            this.a.c.c();
        } catch (Throwable e) {
            qd.d("Could not destroy mediation adapter.", e);
        }
    }
}
