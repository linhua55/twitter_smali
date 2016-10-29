package com.twitter.android.revenue;

import java.util.List;

/* compiled from: Twttr */
class e implements Runnable {
    final /* synthetic */ List a;
    final /* synthetic */ d b;

    e(d dVar, List list) {
        this.b = dVar;
        this.a = list;
    }

    public void run() {
        this.b.a(this.a);
    }
}
