package com.twitter.library.api.upload.internal;

import com.twitter.library.client.az;

/* compiled from: Twttr */
class s implements Runnable {
    final /* synthetic */ p a;

    s(p pVar) {
        this.a = pVar;
    }

    public void run() {
        ad adVar = new ad(this.a.a, this.a.b, this.a.d.a(), this.a.d.f, this.a.e);
        adVar.a(new t(this));
        az.a(this.a.a).a(adVar, null);
    }
}
