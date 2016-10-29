package com.twitter.internal.android.service;

/* compiled from: Twttr */
class o implements Runnable {
    private final Throwable a;

    o(Throwable th) {
        this.a = th;
    }

    public void run() {
        throw new AsyncExecutionException(this.a);
    }
}
