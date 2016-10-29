package com.twitter.library.metrics;

import com.twitter.util.s;

/* compiled from: Twttr */
class a implements Runnable {
    final /* synthetic */ s a;
    final /* synthetic */ DataUsageObserver b;

    a(DataUsageObserver dataUsageObserver, s sVar) {
        this.b = dataUsageObserver;
        this.a = sVar;
    }

    public void run() {
        this.b.a();
        this.a.a(this, 86400001);
    }
}
