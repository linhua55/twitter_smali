package com.google.android.gms.ads.internal.request;

import com.google.android.gms.internal.sr;

class l implements sr<AdRequestInfoParcel> {
    final /* synthetic */ u a;
    final /* synthetic */ k b;

    l(k kVar, u uVar) {
        this.b = kVar;
        this.a = uVar;
    }

    public void a(AdRequestInfoParcel adRequestInfoParcel) {
        if (!this.b.a(this.a, adRequestInfoParcel)) {
            this.b.a();
        }
    }

    public /* synthetic */ void a(Object obj) {
        a((AdRequestInfoParcel) obj);
    }
}
