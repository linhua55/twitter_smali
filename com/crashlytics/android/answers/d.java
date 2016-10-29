package com.crashlytics.android.answers;

import io.fabric.sdk.android.f;

/* compiled from: Twttr */
class d implements Runnable {
    final /* synthetic */ b a;

    d(b bVar) {
        this.a = bVar;
    }

    public void run() {
        try {
            z zVar = this.a.b;
            this.a.b = new p();
            zVar.b();
        } catch (Throwable e) {
            f.h().e("Answers", "Failed to disable events", e);
        }
    }
}
