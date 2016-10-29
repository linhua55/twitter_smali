package com.google.android.gms.common.api;

import com.google.android.gms.common.api.internal.zzw;

class p implements Runnable {
    final /* synthetic */ n a;
    final /* synthetic */ o b;

    p(o oVar, n nVar) {
        this.b = oVar;
        this.a = nVar;
    }

    public void run() {
        if (!this.b.k.isFinishing() && !this.b.k.getSupportFragmentManager().isDestroyed()) {
            this.b.a(zzw.b(this.b.k), this.a);
        }
    }
}
