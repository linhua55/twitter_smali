package com.crashlytics.android.core;

import java.io.File;
import java.io.FilenameFilter;

/* compiled from: Twttr */
final class ai implements FilenameFilter {
    ai() {
    }

    public boolean accept(File file, String str) {
        return aa.e.matcher(str).matches();
    }
}
