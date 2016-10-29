package com.twitter.android.media.camera;

/* compiled from: Twttr */
class ar implements Runnable {
    static final /* synthetic */ boolean a;
    final /* synthetic */ aq b;

    static {
        a = !ah.class.desiredAssertionStatus();
    }

    ar(aq aqVar) {
        this.b = aqVar;
    }

    public void run() {
        if (a || this.b.a.P != null) {
            this.b.a.P.d();
            return;
        }
        throw new AssertionError();
    }
}
