package com.twitter.internal.android.service;

/* compiled from: Twttr */
class h implements Runnable {
    private final AsyncOperation a;
    private final AsyncService b;

    h(AsyncService asyncService, AsyncOperation asyncOperation) {
        this.b = asyncService;
        this.a = asyncOperation;
    }

    public void run() {
        this.a.a(this.b);
    }
}
