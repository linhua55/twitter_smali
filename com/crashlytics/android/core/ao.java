package com.crashlytics.android.core;

import java.io.File;
import java.io.FilenameFilter;

/* compiled from: Twttr */
class ao implements FilenameFilter {
    private ao() {
    }

    public boolean accept(File file, String str) {
        return !aa.a.accept(file, str) && aa.e.matcher(str).matches();
    }
}
