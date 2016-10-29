package com.twitter.android.client;

/* compiled from: Twttr */
class ao extends p {
    final /* synthetic */ Runnable a;
    final /* synthetic */ OpenUriHelper b;

    ao(OpenUriHelper openUriHelper, Runnable runnable) {
        this.b = openUriHelper;
        this.a = runnable;
    }

    public void a() {
        this.a.run();
    }

    public int b() {
        return 1;
    }
}
