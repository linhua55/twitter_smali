package com.crashlytics.android.core;

import io.fabric.sdk.android.f;
import io.fabric.sdk.android.services.common.l;
import java.util.List;

/* compiled from: Twttr */
class ca extends l {
    final /* synthetic */ by a;
    private final float b;

    ca(by byVar, float f) {
        this.a = byVar;
        this.b = f;
    }

    public void a() {
        try {
            b();
        } catch (Throwable e) {
            f.h().e("CrashlyticsCore", "An unexpected error occurred while attempting to upload crash reports.", e);
        }
        this.a.f = null;
    }

    private void b() {
        f.h().a("CrashlyticsCore", "Starting report processing in " + this.b + " second(s)...");
        if (this.b > 0.0f) {
            try {
                Thread.sleep((long) (this.b * 1000.0f));
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
                return;
            }
        }
        f e2 = f.e();
        aa o = e2.o();
        List<bx> a = this.a.a();
        if (!o.a()) {
            if (a.isEmpty() || e2.z()) {
                List list = a;
                int i = 0;
                while (!r0.isEmpty() && !f.e().o().a()) {
                    f.h().a("CrashlyticsCore", "Attempting to send " + r0.size() + " report(s)");
                    for (bx a2 : r0) {
                        this.a.a(a2);
                    }
                    List a3 = this.a.a();
                    if (a3.isEmpty()) {
                        list = a3;
                    } else {
                        int i2 = i + 1;
                        long j = (long) by.c[Math.min(i, by.c.length - 1)];
                        f.h().a("CrashlyticsCore", "Report submisson: scheduling delayed retry in " + j + " seconds");
                        try {
                            Thread.sleep(j * 1000);
                            i = i2;
                            list = a3;
                        } catch (InterruptedException e3) {
                            Thread.currentThread().interrupt();
                            return;
                        }
                    }
                }
                return;
            }
            f.h().a("CrashlyticsCore", "User declined to send. Removing " + a.size() + " Report(s).");
            for (bx a22 : a) {
                a22.a();
            }
        }
    }
}
