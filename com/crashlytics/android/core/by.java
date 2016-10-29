package com.crashlytics.android.core;

import io.fabric.sdk.android.f;
import io.fabric.sdk.android.services.common.k;
import java.io.File;
import java.io.FilenameFilter;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

/* compiled from: Twttr */
class by {
    static final Map<String, String> a;
    private static final FilenameFilter b;
    private static final short[] c;
    private final Object d;
    private final at e;
    private Thread f;

    static {
        b = new bz();
        a = Collections.singletonMap("X-CRASHLYTICS-INVALID-SESSION", "1");
        c = new short[]{(short) 10, (short) 20, (short) 30, (short) 60, (short) 120, (short) 300};
    }

    public by(at atVar) {
        this.d = new Object();
        if (atVar == null) {
            throw new IllegalArgumentException("createReportCall must not be null.");
        }
        this.e = atVar;
    }

    public synchronized void a(float f) {
        if (this.f == null) {
            this.f = new Thread(new ca(this, f), "Crashlytics Report Uploader");
            this.f.start();
        }
    }

    boolean a(bx bxVar) {
        boolean z = false;
        synchronized (this.d) {
            try {
                boolean a = this.e.a(new as(new k().a(f.e().E()), bxVar));
                f.h().c("CrashlyticsCore", "Crashlytics report upload " + (a ? "complete: " : "FAILED: ") + bxVar.b());
                if (a) {
                    bxVar.a();
                    z = true;
                }
            } catch (Throwable e) {
                f.h().e("CrashlyticsCore", "Error occurred sending report " + bxVar, e);
            }
        }
        return z;
    }

    List<bx> a() {
        f.h().a("CrashlyticsCore", "Checking for crash reports...");
        synchronized (this.d) {
            File[] listFiles = f.e().w().listFiles(b);
        }
        List<bx> linkedList = new LinkedList();
        for (File file : listFiles) {
            f.h().a("CrashlyticsCore", "Found crash report " + file.getPath());
            linkedList.add(new cc(file));
        }
        if (linkedList.isEmpty()) {
            f.h().a("CrashlyticsCore", "No reports found.");
        }
        return linkedList;
    }
}
