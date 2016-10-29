package com.crashlytics.android.core;

import java.io.File;
import java.util.Comparator;

/* compiled from: Twttr */
final class ag implements Comparator<File> {
    ag() {
    }

    public /* synthetic */ int compare(Object obj, Object obj2) {
        return a((File) obj, (File) obj2);
    }

    public int a(File file, File file2) {
        return file2.getName().compareTo(file.getName());
    }
}
