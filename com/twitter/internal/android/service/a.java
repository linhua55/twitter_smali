package com.twitter.internal.android.service;

/* compiled from: Twttr */
class a implements Runnable {
    final /* synthetic */ Object a;
    final /* synthetic */ AsyncOperation b;

    a(AsyncOperation asyncOperation, Object obj) {
        this.b = asyncOperation;
        this.a = obj;
    }

    public void run() {
        this.b.c(this.a);
    }
}
