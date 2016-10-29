package com.crashlytics.android.core;

import io.fabric.sdk.android.f;
import java.util.concurrent.Callable;

/* compiled from: Twttr */
class w implements Callable<T> {
    final /* synthetic */ Callable a;
    final /* synthetic */ u b;

    w(u uVar, Callable callable) {
        this.b = uVar;
        this.a = callable;
    }

    public T call() throws Exception {
        try {
            return this.a.call();
        } catch (Throwable e) {
            f.h().e("CrashlyticsCore", "Failed to execute task.", e);
            return null;
        }
    }
}
