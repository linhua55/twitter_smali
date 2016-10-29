package com.google.android.gms.ads.internal.request;

import com.google.android.gms.internal.jh;
import com.google.android.gms.internal.qd;
import com.google.android.gms.internal.sr;

class ae implements sr<jh> {
    final /* synthetic */ ad a;

    ae(ad adVar) {
        this.a = adVar;
    }

    public void a(jh jhVar) {
        try {
            jhVar.a("AFMA_getAdapterLessMediationAd", this.a.a);
        } catch (Throwable e) {
            qd.b("Error requesting an ad url", e);
            ab.c().b(this.a.b);
        }
    }

    public /* synthetic */ void a(Object obj) {
        a((jh) obj);
    }
}
