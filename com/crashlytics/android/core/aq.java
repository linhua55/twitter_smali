package com.crashlytics.android.core;

import io.fabric.sdk.android.f;
import io.fabric.sdk.android.services.common.CommonUtils;
import io.fabric.sdk.android.services.settings.q;
import java.io.File;

/* compiled from: Twttr */
final class aq implements Runnable {
    private final f a;
    private final File b;

    public aq(f fVar, File file) {
        this.a = fVar;
        this.b = file;
    }

    public void run() {
        if (CommonUtils.n(this.a.E())) {
            f.h().a("CrashlyticsCore", "Attempting to send crash report at time of crash...");
            at a = this.a.a(q.a().b());
            if (a != null) {
                new by(a).a(new cc(this.b, aa.f));
            }
        }
    }
}
