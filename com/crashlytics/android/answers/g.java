package com.crashlytics.android.answers;

import io.fabric.sdk.android.f;

/* compiled from: Twttr */
class g implements Runnable {
    final /* synthetic */ b a;

    g(b bVar) {
        this.a = bVar;
    }

    public void run() {
        try {
            this.a.b.c();
        } catch (Throwable e) {
            f.h().e("Answers", "Failed to flush events", e);
        }
    }
}
