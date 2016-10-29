package com.crashlytics.android.core;

import android.content.Context;
import cxf;
import io.fabric.sdk.android.f;
import io.fabric.sdk.android.services.common.CommonUtils;
import java.io.File;
import java.util.Set;

/* compiled from: Twttr */
class ba {
    private static final bc a;
    private final Context b;
    private final cxf c;
    private az d;

    static {
        a = new bc();
    }

    public ba(Context context, cxf cxf) {
        this(context, cxf, null);
    }

    public ba(Context context, cxf cxf, String str) {
        this.b = context;
        this.c = cxf;
        this.d = a;
        a(str);
    }

    public final void a(String str) {
        this.d.b();
        this.d = a;
        if (str != null) {
            if (c()) {
                a(b(str), 65536);
            } else {
                f.h().a("CrashlyticsCore", "Preferences requested no custom logs. Aborting log file creation.");
            }
        }
    }

    public void a(long j, String str) {
        this.d.a(j, str);
    }

    public b a() {
        return this.d.a();
    }

    public void b() {
        this.d.c();
    }

    public void a(Set<String> set) {
        File[] listFiles = d().listFiles();
        if (listFiles != null) {
            for (File file : listFiles) {
                if (!set.contains(a(file))) {
                    file.delete();
                }
            }
        }
    }

    void a(File file, int i) {
        this.d = new bv(file, i);
    }

    private File b(String str) {
        return new File(d(), "crashlytics-userlog-" + str + ".temp");
    }

    private String a(File file) {
        String name = file.getName();
        int lastIndexOf = name.lastIndexOf(".temp");
        return lastIndexOf == -1 ? name : name.substring("crashlytics-userlog-".length(), lastIndexOf);
    }

    private boolean c() {
        return CommonUtils.a(this.b, "com.crashlytics.CollectCustomLogs", true);
    }

    private File d() {
        File file = new File(this.c.a(), "log-files");
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }
}
