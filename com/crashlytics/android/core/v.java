package com.crashlytics.android.core;

import io.fabric.sdk.android.f;

/* compiled from: Twttr */
class v implements Runnable {
    final /* synthetic */ Runnable a;
    final /* synthetic */ u b;

    v(u uVar, Runnable runnable) {
        this.b = uVar;
        this.a = runnable;
    }

    public void run() {
        try {
            this.a.run();
        } catch (Throwable e) {
            f.h().e("CrashlyticsCore", "Failed to execute task.", e);
        }
    }
}
