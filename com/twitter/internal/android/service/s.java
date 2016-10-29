package com.twitter.internal.android.service;

/* compiled from: Twttr */
class s extends w {
    final /* synthetic */ Runnable a;
    final /* synthetic */ r b;

    s(r rVar, int i, Runnable runnable) {
        this.b = rVar;
        this.a = runnable;
        super(i);
    }

    public void run() {
        this.a.run();
    }
}
