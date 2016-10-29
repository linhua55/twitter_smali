package com.twitter.android;

/* compiled from: Twttr */
class et implements Runnable {
    final /* synthetic */ int a;
    final /* synthetic */ es b;

    et(es esVar, int i) {
        this.b = esVar;
        this.a = i;
    }

    public void run() {
        EditProfileOnboardingActivity.a(this.b.a).smoothScrollTo(0, this.a);
    }
}
