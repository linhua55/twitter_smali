package com.crashlytics.android.core;

import java.io.File;
import java.io.FilenameFilter;

/* compiled from: Twttr */
final class e implements FilenameFilter {
    e() {
    }

    public boolean accept(File file, String str) {
        return str.endsWith(".cls_temp");
    }
}
