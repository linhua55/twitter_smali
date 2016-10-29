package com.crashlytics.android.core;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.IOException;

/* compiled from: Twttr */
class d extends FileOutputStream {
    public static final FilenameFilter a;
    private final String b;
    private File c;
    private File d;
    private boolean e;

    public d(File file, String str) throws FileNotFoundException {
        super(new File(file, str + ".cls_temp"));
        this.e = false;
        this.b = file + File.separator + str;
        this.c = new File(this.b + ".cls_temp");
    }

    public synchronized void close() throws IOException {
        if (!this.e) {
            this.e = true;
            super.flush();
            super.close();
            File file = new File(this.b + ".cls");
            if (this.c.renameTo(file)) {
                this.c = null;
                this.d = file;
            } else {
                String str = TtmlNode.ANONYMOUS_REGION_ID;
                if (file.exists()) {
                    str = " (target already exists)";
                } else if (!this.c.exists()) {
                    str = " (source does not exist)";
                }
                throw new IOException("Could not rename temp file: " + this.c + " -> " + file + str);
            }
        }
    }

    public void a() throws IOException {
        if (!this.e) {
            this.e = true;
            super.flush();
            super.close();
        }
    }

    static {
        a = new e();
    }
}
