package com.crashlytics.android.core;

import cxf;
import io.fabric.sdk.android.f;
import java.io.File;

/* compiled from: Twttr */
class x {
    private final String a;
    private final cxf b;

    public x(String str, cxf cxf) {
        this.a = str;
        this.b = cxf;
    }

    public boolean a() {
        boolean z = false;
        try {
            z = d().createNewFile();
        } catch (Throwable e) {
            f.h().e("CrashlyticsCore", "Error creating marker: " + this.a, e);
        }
        return z;
    }

    public boolean b() {
        return d().exists();
    }

    public boolean c() {
        return d().delete();
    }

    private File d() {
        return new File(this.b.a(), this.a);
    }
}
