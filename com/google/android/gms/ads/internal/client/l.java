package com.google.android.gms.ads.internal.client;

import com.google.android.gms.ads.internal.util.client.b;

class l implements Runnable {
    final /* synthetic */ k a;

    l(k kVar) {
        this.a = kVar;
    }

    public void run() {
        if (this.a.a != null) {
            try {
                this.a.a.a(1);
            } catch (Throwable e) {
                b.d("Could not notify onAdFailedToLoad event.", e);
            }
        }
    }
}
