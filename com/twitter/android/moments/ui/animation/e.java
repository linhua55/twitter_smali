package com.twitter.android.moments.ui.animation;

import cqk;

/* compiled from: Twttr */
class e implements Runnable {
    final /* synthetic */ cqk a;
    final /* synthetic */ d b;

    e(d dVar, cqk cqk) {
        this.b = dVar;
        this.a = cqk;
    }

    public void run() {
        if (this.a != null) {
            this.a.a();
        }
    }
}
