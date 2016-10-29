package com.crashlytics.android.core;

import java.io.File;
import java.util.Comparator;

/* compiled from: Twttr */
final class ah implements Comparator<File> {
    ah() {
    }

    public /* synthetic */ int compare(Object obj, Object obj2) {
        return a((File) obj, (File) obj2);
    }

    public int a(File file, File file2) {
        return file.getName().compareTo(file2.getName());
    }
}
