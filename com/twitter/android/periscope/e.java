package com.twitter.android.periscope;

import tv.periscope.android.event.RetryEvent;

/* compiled from: Twttr */
class e implements Runnable {
    final /* synthetic */ RetryEvent a;
    final /* synthetic */ d b;

    e(d dVar, RetryEvent retryEvent) {
        this.b = dVar;
        this.a = retryEvent;
    }

    public void run() {
        this.b.b.a(new c(this.a.a));
    }
}
