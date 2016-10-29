package com.crashlytics.android.core;

import java.io.File;
import java.io.FilenameFilter;

/* compiled from: Twttr */
class ar implements FilenameFilter {
    private final String a;

    public ar(String str) {
        this.a = str;
    }

    public boolean accept(File file, String str) {
        if (str.equals(this.a + ".cls") || !str.contains(this.a) || str.endsWith(".cls_temp")) {
            return false;
        }
        return true;
    }
}
