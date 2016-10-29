package com.twitter.android.revenue;

import bbn;
import defpackage.azm;
import defpackage.azn;

/* compiled from: Twttr */
class k implements Runnable {
    final /* synthetic */ a a;
    final /* synthetic */ j b;

    k(j jVar, a aVar) {
        this.b = jVar;
        this.a = aVar;
    }

    public void run() {
        com.twitter.database.model.k b = this.b.b.b().c(azm.class).b();
        ((azn) b.d).c(this.a.b()).f(this.a.c());
        if (b.a("ad_id=" + this.a.a(), new String[0]) < 0) {
            bbn.a(this.b.a("startUpdateAd").a("message", "Failed to update ad").a("ad_id", Long.valueOf(this.a.a())));
        }
    }
}
