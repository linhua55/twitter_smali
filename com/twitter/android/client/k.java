package com.twitter.android.client;

import android.app.Activity;

/* compiled from: Twttr */
class k implements Runnable {
    final /* synthetic */ String a;
    final /* synthetic */ Activity b;
    final /* synthetic */ BrowserLoadingStatus c;

    k(BrowserLoadingStatus browserLoadingStatus, String str, Activity activity) {
        this.c = browserLoadingStatus;
        this.a = str;
        this.b = activity;
    }

    public void run() {
        BrowserLoadingStatus.a(this.c, this.a, this.b);
    }
}
