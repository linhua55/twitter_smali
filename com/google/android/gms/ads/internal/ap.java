package com.google.android.gms.ads.internal;

import java.lang.ref.WeakReference;

class ap implements Runnable {
    final /* synthetic */ WeakReference a;
    final /* synthetic */ ao b;

    ap(ao aoVar, WeakReference weakReference) {
        this.b = aoVar;
        this.a = weakReference;
    }

    public void run() {
        ao.a(this.b, false);
        b bVar = (b) this.a.get();
        if (bVar != null) {
            bVar.c(ao.a(this.b));
        }
    }
}
