package com.crashlytics.android.core;

import io.fabric.sdk.android.f;
import java.util.concurrent.Callable;

/* compiled from: Twttr */
class h implements Callable<Void> {
    final /* synthetic */ f a;

    h(f fVar) {
        this.a = fVar;
    }

    public /* synthetic */ Object call() throws Exception {
        return a();
    }

    public Void a() throws Exception {
        f.a(this.a).a();
        f.h().a("CrashlyticsCore", "Initialization marker file created.");
        return null;
    }
}
