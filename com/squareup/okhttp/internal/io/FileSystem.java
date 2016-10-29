package com.squareup.okhttp.internal.io;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import okio.aa;
import okio.ab;
import okio.q;

/* compiled from: Twttr */
public interface FileSystem {
    public static final FileSystem SYSTEM;

    aa appendingSink(File file) throws FileNotFoundException;

    void delete(File file) throws IOException;

    void deleteContents(File file) throws IOException;

    boolean exists(File file) throws IOException;

    void rename(File file, File file2) throws IOException;

    aa sink(File file) throws FileNotFoundException;

    long size(File file);

    ab source(File file) throws FileNotFoundException;

    static {
        SYSTEM = new FileSystem() {
            public ab source(File file) throws FileNotFoundException {
                return q.a(file);
            }

            public aa sink(File file) throws FileNotFoundException {
                try {
                    return q.b(file);
                } catch (FileNotFoundException e) {
                    file.getParentFile().mkdirs();
                    return q.b(file);
                }
            }

            public aa appendingSink(File file) throws FileNotFoundException {
                try {
                    return q.c(file);
                } catch (FileNotFoundException e) {
                    file.getParentFile().mkdirs();
                    return q.c(file);
                }
            }

            public void delete(File file) throws IOException {
                if (!file.delete() && file.exists()) {
                    throw new IOException("failed to delete " + file);
                }
            }

            public boolean exists(File file) throws IOException {
                return file.exists();
            }

            public long size(File file) {
                return file.length();
            }

            public void rename(File file, File file2) throws IOException {
                delete(file2);
                if (!file.renameTo(file2)) {
                    throw new IOException("failed to rename " + file + " to " + file2);
                }
            }

            public void deleteContents(File file) throws IOException {
                File[] listFiles = file.listFiles();
                if (listFiles == null) {
                    throw new IOException("not a readable directory: " + file);
                }
                int length = listFiles.length;
                int i = 0;
                while (i < length) {
                    File file2 = listFiles[i];
                    if (file2.isDirectory()) {
                        deleteContents(file2);
                    }
                    if (file2.delete()) {
                        i++;
                    } else {
                        throw new IOException("failed to delete " + file2);
                    }
                }
            }
        };
    }
}
