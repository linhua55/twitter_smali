package com.crashlytics.android.core;

import am;
import io.fabric.sdk.android.f;
import java.util.concurrent.Callable;

/* compiled from: Twttr */
class ad implements Callable<Boolean> {
    final /* synthetic */ aa a;

    ad(aa aaVar) {
        this.a = aaVar;
    }

    public /* synthetic */ Object call() throws Exception {
        return a();
    }

    public Boolean a() throws Exception {
        if (this.a.k.get()) {
            f.h().a("CrashlyticsCore", "Skipping session finalization because a crash has already occurred.");
            return Boolean.FALSE;
        }
        f.h().a("CrashlyticsCore", "Finalizing previously open sessions.");
        am v = this.a.n.v();
        if (v != null) {
            this.a.a(v);
        }
        this.a.a(true);
        f.h().a("CrashlyticsCore", "Closed all previously open sessions");
        return Boolean.TRUE;
    }
}
