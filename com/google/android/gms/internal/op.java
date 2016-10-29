package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.ads.internal.ar;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.request.AdRequestInfoParcel;

final class op implements Runnable {
    final /* synthetic */ Context a;
    final /* synthetic */ AdRequestInfoParcel b;
    final /* synthetic */ ov c;
    final /* synthetic */ cy d;
    final /* synthetic */ cu e;
    final /* synthetic */ String f;
    final /* synthetic */ bx g;

    op(Context context, AdRequestInfoParcel adRequestInfoParcel, ov ovVar, cy cyVar, cu cuVar, String str, bx bxVar) {
        this.a = context;
        this.b = adRequestInfoParcel;
        this.c = ovVar;
        this.d = cyVar;
        this.e = cuVar;
        this.f = str;
        this.g = bxVar;
    }

    public void run() {
        sz a = ar.f().a(this.a, new AdSizeParcel(), false, false, null, this.b.k);
        if (ar.h().l()) {
            a.clearCache(true);
        }
        a.a().setWillNotDraw(true);
        this.c.a(a);
        this.d.a(this.e, new String[]{"rwc"});
        tc a2 = ok.a(this.f, this.d, this.d.a());
        ta l = a.l();
        l.a("/invalidRequest", this.c.c);
        l.a("/loadAdURL", this.c.d);
        l.a("/log", ex.i);
        l.a(a2);
        qd.a("Loading the JS library.");
        a.loadUrl(this.g.a());
    }
}
