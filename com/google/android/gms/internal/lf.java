package com.google.android.gms.internal;

import com.google.ads.AdRequest$ErrorCode;
import com.google.android.gms.ads.internal.util.client.b;

class lf implements Runnable {
    final /* synthetic */ AdRequest$ErrorCode a;
    final /* synthetic */ ld b;

    lf(ld ldVar, AdRequest$ErrorCode adRequest$ErrorCode) {
        this.b = ldVar;
        this.a = adRequest$ErrorCode;
    }

    public void run() {
        try {
            ld.a(this.b).a(lg.a(this.a));
        } catch (Throwable e) {
            b.d("Could not call onAdFailedToLoad.", e);
        }
    }
}
