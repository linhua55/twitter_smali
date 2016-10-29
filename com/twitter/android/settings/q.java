package com.twitter.android.settings;

/* compiled from: Twttr */
class q implements Runnable {
    final /* synthetic */ String a;
    final /* synthetic */ PrivacyAndContentActivity b;

    q(PrivacyAndContentActivity privacyAndContentActivity, String str) {
        this.b = privacyAndContentActivity;
        this.a = str;
    }

    public void run() {
        this.b.d(this.a);
    }
}
