package com.google.android.gms.ads.internal.client;

import com.google.android.gms.ads.internal.util.client.b;

class j implements Runnable {
    final /* synthetic */ i a;

    j(i iVar) {
        this.a = iVar;
    }

    public void run() {
        if (this.a.a.a != null) {
            try {
                this.a.a.a.a(1);
            } catch (Throwable e) {
                b.d("Could not notify onAdFailedToLoad event.", e);
            }
        }
    }
}
