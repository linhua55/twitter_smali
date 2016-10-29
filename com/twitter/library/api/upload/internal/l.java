package com.twitter.library.api.upload.internal;

import com.twitter.library.client.az;

/* compiled from: Twttr */
class l implements Runnable {
    final /* synthetic */ j a;

    l(j jVar) {
        this.a = jVar;
    }

    public void run() {
        ad adVar = new ad(this.a.a, this.a.b, this.a.e, this.a.f, this.a.d);
        adVar.a(new m(this));
        az.a(this.a.a).a(adVar, null);
    }
}
