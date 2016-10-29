package com.crashlytics.android.core;

import java.io.File;
import java.io.FilenameFilter;

/* compiled from: Twttr */
final class bz implements FilenameFilter {
    bz() {
    }

    public boolean accept(File file, String str) {
        return str.endsWith(".cls") && !str.contains("Session");
    }
}
