package com.twitter.android.revenue;

import bbn;
import defpackage.azm;

/* compiled from: Twttr */
class m implements Runnable {
    final /* synthetic */ long a;
    final /* synthetic */ j b;

    m(j jVar, long j) {
        this.b = jVar;
        this.a = j;
    }

    public void run() {
        if (this.b.b.b().c(azm.class).a("assigned_slot_id IS NULL AND slot_id IS NULL AND created_at<" + this.a, new String[0]) < 0) {
            bbn.a(this.b.a("startDeleteAd").a("message", "Failed to delete ads with old timestamp"));
        }
    }
}
