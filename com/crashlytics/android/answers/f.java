package com.crashlytics.android.answers;

/* compiled from: Twttr */
class f implements Runnable {
    final /* synthetic */ b a;

    f(b bVar) {
        this.a = bVar;
    }

    public void run() {
        try {
            ac a = this.a.f.a();
            w a2 = this.a.e.a();
            a2.a(this.a);
            this.a.b = new q(this.a.c, this.a.d, this.a.a, a2, this.a.g, a);
        } catch (Throwable e) {
            io.fabric.sdk.android.f.h().e("Answers", "Failed to enable events", e);
        }
    }
}
