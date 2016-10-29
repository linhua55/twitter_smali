package com.google.android.gms.ads.internal;

import com.google.android.gms.ads.internal.formats.f;
import com.google.android.gms.internal.em;
import com.google.android.gms.internal.ps;
import com.google.android.gms.internal.qd;

class an implements Runnable {
    final /* synthetic */ String a;
    final /* synthetic */ ps b;
    final /* synthetic */ aj c;

    an(aj ajVar, String str, ps psVar) {
        this.c = ajVar;
        this.a = str;
        this.b = psVar;
    }

    public void run() {
        try {
            ((em) this.c.f.v.get(this.a)).a((f) this.b.B);
        } catch (Throwable e) {
            qd.d("Could not call onCustomTemplateAdLoadedListener.onCustomTemplateAdLoaded().", e);
        }
    }
}
