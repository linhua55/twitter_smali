package com.twitter.android;

import com.twitter.library.client.bg;

/* compiled from: Twttr */
class xx implements Runnable {
    final /* synthetic */ VerifyLoginActivity a;

    private xx(VerifyLoginActivity verifyLoginActivity) {
        this.a = verifyLoginActivity;
    }

    public void run() {
        if (!this.a.isFinishing()) {
            bg h = this.a.aa();
            this.a.a = h.a(this.a.m, this.a.c.a, this.a.c.b, null, this.a.n);
        }
    }
}
