package com.twitter.internal.android.service;

/* compiled from: Twttr */
class y extends w {
    final /* synthetic */ Runnable a;
    final /* synthetic */ x b;

    y(x xVar, int i, Runnable runnable) {
        this.b = xVar;
        this.a = runnable;
        super(i);
    }

    public void run() {
        this.a.run();
    }
}
