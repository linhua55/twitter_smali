package com.twitter.android;

import com.twitter.android.timeline.aw;
import com.twitter.android.timeline.bm;
import com.twitter.library.api.PromotedEvent;

/* compiled from: Twttr */
class su implements Runnable {
    final /* synthetic */ aw a;
    final /* synthetic */ PromotedEvent b;
    final /* synthetic */ String c;
    final /* synthetic */ String d;
    final /* synthetic */ sn e;

    su(sn snVar, aw awVar, PromotedEvent promotedEvent, String str, String str2) {
        this.e = snVar;
        this.a = awVar;
        this.b = promotedEvent;
        this.c = str;
        this.d = str2;
    }

    public void run() {
        sn.a(this.e, (bm) this.a, this.b, this.c, this.d);
    }
}
