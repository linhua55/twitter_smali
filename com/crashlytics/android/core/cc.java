package com.crashlytics.android.core;

import io.fabric.sdk.android.f;
import java.io.File;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* compiled from: Twttr */
class cc implements bx {
    private final File a;
    private final Map<String, String> b;

    public cc(File file) {
        this(file, Collections.emptyMap());
    }

    public cc(File file, Map<String, String> map) {
        this.a = file;
        this.b = new HashMap(map);
        if (this.a.length() == 0) {
            this.b.putAll(by.a);
        }
    }

    public File d() {
        return this.a;
    }

    public String b() {
        return d().getName();
    }

    public String c() {
        String b = b();
        return b.substring(0, b.lastIndexOf(46));
    }

    public Map<String, String> e() {
        return Collections.unmodifiableMap(this.b);
    }

    public boolean a() {
        f.h().a("CrashlyticsCore", "Removing report at " + this.a.getPath());
        return this.a.delete();
    }
}
