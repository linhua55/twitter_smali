package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.ar;
import com.google.android.gms.ads.internal.request.AdRequestInfoParcel;
import com.google.android.gms.ads.internal.request.AdResponseParcel;
import com.google.android.gms.ads.internal.request.x;

class ot implements Runnable {
    final /* synthetic */ AdRequestInfoParcel a;
    final /* synthetic */ x b;
    final /* synthetic */ ok c;

    ot(ok okVar, AdRequestInfoParcel adRequestInfoParcel, x xVar) {
        this.c = okVar;
        this.a = adRequestInfoParcel;
        this.b = xVar;
    }

    public void run() {
        AdResponseParcel a;
        try {
            a = this.c.a(this.a);
        } catch (Throwable e) {
            ar.h().a(e, true);
            qd.d("Could not fetch ad response due to an Exception.", e);
            a = null;
        }
        if (a == null) {
            a = new AdResponseParcel(0);
        }
        try {
            this.b.a(a);
        } catch (Throwable e2) {
            qd.d("Fail to forward ad response.", e2);
        }
    }
}
