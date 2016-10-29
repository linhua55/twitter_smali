package com.crashlytics.android.answers;

import io.fabric.sdk.android.f;

/* compiled from: Twttr */
class h implements Runnable {
    final /* synthetic */ ab a;
    final /* synthetic */ boolean b;
    final /* synthetic */ b c;

    h(b bVar, ab abVar, boolean z) {
        this.c = bVar;
        this.a = abVar;
        this.b = z;
    }

    public void run() {
        try {
            this.c.b.a(this.a);
            if (this.b) {
                this.c.b.c();
            }
        } catch (Throwable e) {
            f.h().e("Answers", "Failed to process event", e);
        }
    }
}
