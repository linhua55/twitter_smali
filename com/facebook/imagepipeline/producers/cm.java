package com.facebook.imagepipeline.producers;

import android.util.Pair;

/* compiled from: Twttr */
class cm implements Runnable {
    final /* synthetic */ Pair a;
    final /* synthetic */ cl b;

    cm(cl clVar, Pair pair) {
        this.b = clVar;
        this.a = pair;
    }

    public void run() {
        this.b.a.b((o) this.a.first, (bx) this.a.second);
    }
}
