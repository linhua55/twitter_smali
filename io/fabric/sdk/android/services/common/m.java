package io.fabric.sdk.android.services.common;

import java.io.File;
import java.util.Comparator;

/* compiled from: Twttr */
final class m implements Comparator<File> {
    m() {
    }

    public /* synthetic */ int compare(Object obj, Object obj2) {
        return a((File) obj, (File) obj2);
    }

    public int a(File file, File file2) {
        return (int) (file.lastModified() - file2.lastModified());
    }
}
