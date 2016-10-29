package com.twitter.internal.android.service;

/* compiled from: Twttr */
class g implements Runnable {
    final /* synthetic */ i a;
    final /* synthetic */ e b;

    g(e eVar, i iVar) {
        this.b = eVar;
        this.a = iVar;
    }

    public void run() {
        this.b.d.a(this.a);
    }
}
