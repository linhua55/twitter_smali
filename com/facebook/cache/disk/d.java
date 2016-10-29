package com.facebook.cache.disk;

import java.io.File;
import java.io.IOException;

/* compiled from: Twttr */
class d {
    public final FileType a;
    public final String b;

    private d(FileType fileType, String str) {
        this.a = fileType;
        this.b = str;
    }

    public String toString() {
        return this.a + "(" + this.b + ")";
    }

    public File a(File file) {
        return new File(file, this.b + this.a.extension);
    }

    public File b(File file) throws IOException {
        return File.createTempFile(this.b + ".", ".tmp", file);
    }

    public static d c(File file) {
        String name = file.getName();
        int lastIndexOf = name.lastIndexOf(46);
        if (lastIndexOf <= 0) {
            return null;
        }
        FileType a = FileType.a(name.substring(lastIndexOf));
        if (a == null) {
            return null;
        }
        name = name.substring(0, lastIndexOf);
        if (a.equals(FileType.TEMP)) {
            lastIndexOf = name.lastIndexOf(46);
            if (lastIndexOf <= 0) {
                return null;
            }
            name = name.substring(0, lastIndexOf);
        }
        return new d(a, name);
    }
}
