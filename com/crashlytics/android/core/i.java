package com.crashlytics.android.core;

import io.fabric.sdk.android.f;
import java.util.concurrent.Callable;

/* compiled from: Twttr */
class i implements Callable<Boolean> {
    final /* synthetic */ f a;

    i(f fVar) {
        this.a = fVar;
    }

    public /* synthetic */ Object call() throws Exception {
        return a();
    }

    public Boolean a() throws Exception {
        try {
            boolean c = f.a(this.a).c();
            f.h().a("CrashlyticsCore", "Initialization marker file removed: " + c);
            return Boolean.valueOf(c);
        } catch (Throwable e) {
            f.h().e("CrashlyticsCore", "Problem encountered deleting Crashlytics initialization marker.", e);
            return Boolean.valueOf(false);
        }
    }
}
