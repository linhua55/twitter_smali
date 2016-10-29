package com.crashlytics.android.core;

import java.io.File;
import java.io.FilenameFilter;

/* compiled from: Twttr */
class ap implements FilenameFilter {
    private final String a;

    public ap(String str) {
        this.a = str;
    }

    public boolean accept(File file, String str) {
        return str.contains(this.a) && !str.endsWith(".cls_temp");
    }
}
