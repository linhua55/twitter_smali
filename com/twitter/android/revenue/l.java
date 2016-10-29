package com.twitter.android.revenue;

import bbn;
import defpackage.azm;

/* compiled from: Twttr */
class l implements Runnable {
    final /* synthetic */ long a;
    final /* synthetic */ j b;

    l(j jVar, long j) {
        this.b = jVar;
        this.a = j;
    }

    public void run() {
        if (this.b.b.b().c(azm.class).a("ad_id=" + this.a, new String[0]) < 0) {
            bbn.a(this.b.a("startDeleteAd").a("message", "Failed to delete ad").a("ad_id", Long.valueOf(this.a)));
        }
    }
}
