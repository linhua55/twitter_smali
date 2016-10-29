package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.client.ac;
import com.google.android.gms.ads.internal.client.af;
import com.google.android.gms.ads.internal.client.ax;
import com.google.android.gms.ads.internal.reward.client.g;
import com.google.android.gms.ads.internal.w;

@oi
class hm {
    af a;
    ax b;
    mo c;
    de d;
    ac e;
    g f;

    hm() {
    }

    void a(w wVar) {
        if (this.a != null) {
            wVar.a((af) new hn(this, this.a));
        }
        if (this.b != null) {
            wVar.a(this.b);
        }
        if (this.c != null) {
            wVar.a(this.c);
        }
        if (this.d != null) {
            wVar.a(this.d);
        }
        if (this.e != null) {
            wVar.a(this.e);
        }
        if (this.f != null) {
            wVar.a(this.f);
        }
    }
}
