package com.google.android.gms.internal;

class qc implements Runnable {
    final /* synthetic */ qb a;

    qc(qb qbVar) {
        this.a = qbVar;
    }

    public final void run() {
        qb.a(this.a, Thread.currentThread());
        this.a.a();
    }
}
