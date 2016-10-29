package com.twitter.android.moments.ui.animation;

import cqk;

/* compiled from: Twttr */
class s implements Runnable {
    final /* synthetic */ cqk a;
    final /* synthetic */ r b;

    s(r rVar, cqk cqk) {
        this.b = rVar;
        this.a = cqk;
    }

    public void run() {
        if (this.a != null) {
            this.a.a();
        }
    }
}
