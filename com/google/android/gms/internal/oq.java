package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.ads.internal.request.AdRequestInfoParcel;

final class oq implements Runnable {
    final /* synthetic */ oj a;
    final /* synthetic */ Context b;
    final /* synthetic */ ov c;
    final /* synthetic */ AdRequestInfoParcel d;

    oq(oj ojVar, Context context, ov ovVar, AdRequestInfoParcel adRequestInfoParcel) {
        this.a = ojVar;
        this.b = context;
        this.c = ovVar;
        this.d = adRequestInfoParcel;
    }

    public void run() {
        this.a.c.a(this.b, this.c, this.d.k);
    }
}
