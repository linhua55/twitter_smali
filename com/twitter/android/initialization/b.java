package com.twitter.android.initialization;

import asp;
import bvj;
import com.twitter.config.d;
import com.twitter.fabric.CrashlyticsErrorLogger;
import com.twitter.util.Tristate;

/* compiled from: Twttr */
class b implements asp {
    final /* synthetic */ CrashlyticsErrorLogger a;
    final /* synthetic */ ErrorReporterInitializer b;

    b(ErrorReporterInitializer errorReporterInitializer, CrashlyticsErrorLogger crashlyticsErrorLogger) {
        this.b = errorReporterInitializer;
        this.a = crashlyticsErrorLogger;
    }

    public void a(long j) {
        if (bvj.c(j)) {
            this.a.a(Tristate.a(d.a("error_logging_enabled")));
        }
    }
}
