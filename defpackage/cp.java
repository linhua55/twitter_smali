package defpackage;

import java.io.File;
import java.io.FileFilter;

/* compiled from: Twttr */
/* renamed from: cp */
final class cp implements FileFilter {
    cp() {
    }

    public boolean accept(File file) {
        String name = file.getName();
        if (!name.startsWith("cpu")) {
            return false;
        }
        int i = 3;
        while (i < name.length()) {
            if (name.charAt(i) < '0' || name.charAt(i) > '9') {
                return false;
            }
            i++;
        }
        return true;
    }
}
