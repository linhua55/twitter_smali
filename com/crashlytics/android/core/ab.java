package com.crashlytics.android.core;

import java.io.File;
import java.io.FilenameFilter;

/* compiled from: Twttr */
final class ab implements FilenameFilter {
    ab() {
    }

    public boolean accept(File file, String str) {
        return str.length() == ".cls".length() + 35 && str.endsWith(".cls");
    }
}
