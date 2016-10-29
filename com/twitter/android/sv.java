package com.twitter.android;

import com.twitter.library.api.PromotedEvent;
import com.twitter.model.core.Tweet;

/* compiled from: Twttr */
class sv implements Runnable {
    final /* synthetic */ Tweet a;
    final /* synthetic */ PromotedEvent b;
    final /* synthetic */ String c;
    final /* synthetic */ String d;
    final /* synthetic */ long e;
    final /* synthetic */ sn f;

    sv(sn snVar, Tweet tweet, PromotedEvent promotedEvent, String str, String str2, long j) {
        this.f = snVar;
        this.a = tweet;
        this.b = promotedEvent;
        this.c = str;
        this.d = str2;
        this.e = j;
    }

    public void run() {
        sn.a(this.f, this.a, this.b, this.c, this.d, this.e);
    }
}
