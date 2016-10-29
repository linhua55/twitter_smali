package com.crashlytics.android.core;

import io.fabric.sdk.android.f;
import java.util.concurrent.Callable;

/* compiled from: Twttr */
final class r implements Callable<Boolean> {
    private final x a;

    public /* synthetic */ Object call() throws Exception {
        return a();
    }

    public r(x xVar) {
        this.a = xVar;
    }

    public Boolean a() throws Exception {
        if (!this.a.b()) {
            return Boolean.FALSE;
        }
        f.h().a("CrashlyticsCore", "Found previous crash marker.");
        this.a.c();
        return Boolean.TRUE;
    }
}
