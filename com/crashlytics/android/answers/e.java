package com.crashlytics.android.answers;

import io.fabric.sdk.android.f;

/* compiled from: Twttr */
class e implements Runnable {
    final /* synthetic */ b a;

    e(b bVar) {
        this.a = bVar;
    }

    public void run() {
        try {
            this.a.b.a();
        } catch (Throwable e) {
            f.h().e("Answers", "Failed to send events files", e);
        }
    }
}
