package com.twitter.android.revenue;

import bbn;
import com.twitter.util.aj;
import defpackage.azm;
import java.util.List;

/* compiled from: Twttr */
class n implements Runnable {
    final /* synthetic */ long a;
    final /* synthetic */ List b;
    final /* synthetic */ j c;

    n(j jVar, long j, List list) {
        this.c = jVar;
        this.a = j;
        this.b = list;
    }

    public void run() {
        if (this.c.b.b().c(azm.class).a("created_at=" + this.a + " AND " + "ad_id" + " IN (" + aj.a(", ", this.b) + ")", new String[0]) < 0) {
            bbn.a(this.c.a("startDeleteDuplicatedAds").a("message", "Failed to delete ads").a("ad_ids", this.b));
        }
    }
}
