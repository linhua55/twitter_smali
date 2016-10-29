package com.facebook.cache.disk;

import com.facebook.cache.common.CacheErrorLogger;
import com.facebook.cache.common.CacheErrorLogger.CacheErrorCategory;
import com.facebook.cache.common.e;
import com.facebook.common.file.FileUtils;
import com.facebook.common.file.FileUtils.CreateDirectoryException;
import com.facebook.common.file.FileUtils.ParentDirNotFoundException;
import com.facebook.common.file.a;
import defpackage.av;
import defpackage.aw;
import defpackage.bp;
import defpackage.bx;
import defpackage.ck;
import defpackage.cn;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Collection;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.TimeUnit;

/* compiled from: Twttr */
public class DefaultDiskStorage implements l {
    static final long a;
    private static final Class<?> b;
    private final File c;
    private final File d;
    private final CacheErrorLogger e;
    private final ck f;

    /* compiled from: Twttr */
    enum FileType {
        CONTENT(".cnt"),
        TEMP(".tmp");
        
        public final String extension;

        private FileType(String str) {
            this.extension = str;
        }

        public static FileType a(String str) {
            if (".cnt".equals(str)) {
                return CONTENT;
            }
            if (".tmp".equals(str)) {
                return TEMP;
            }
            return null;
        }
    }

    /* compiled from: Twttr */
    class IncompleteFileException extends IOException {
        public final long actual;
        public final long expected;

        public IncompleteFileException(long j, long j2) {
            super("File was not written completely. Expected: " + j + ", found: " + j2);
            this.expected = j;
            this.actual = j2;
        }
    }

    public /* synthetic */ av b(String str, av avVar, Object obj) throws IOException {
        return a(str, avVar, obj);
    }

    public /* synthetic */ av c(String str, Object obj) throws IOException {
        return a(str, obj);
    }

    public /* synthetic */ av d(String str, Object obj) throws IOException {
        return b(str, obj);
    }

    public /* synthetic */ Collection d() throws IOException {
        return c();
    }

    static {
        b = DefaultDiskStorage.class;
        a = TimeUnit.MINUTES.toMillis(30);
    }

    public DefaultDiskStorage(File file, int i, CacheErrorLogger cacheErrorLogger) {
        bx.a((Object) file);
        this.c = file;
        this.d = new File(this.c, a(i));
        this.e = cacheErrorLogger;
        e();
        this.f = cn.b();
    }

    static String a(int i) {
        return String.format((Locale) null, "%s.ols%d.%d", new Object[]{"v2", Integer.valueOf(100), Integer.valueOf(i)});
    }

    private void e() {
        Object obj = 1;
        if (this.c.exists()) {
            if (this.d.exists()) {
                obj = null;
            } else {
                a.b(this.c);
            }
        }
        if (obj != null) {
            try {
                FileUtils.a(this.d);
            } catch (CreateDirectoryException e) {
                this.e.a(CacheErrorCategory.WRITE_CREATE_DIR, b, "version directory could not be created: " + this.d, null);
            }
        }
    }

    public void a(String str, av avVar, e eVar, Object obj) throws IOException {
        File c = ((aw) avVar).c();
        try {
            OutputStream fileOutputStream = new FileOutputStream(c);
            try {
                OutputStream bpVar = new bp(fileOutputStream);
                eVar.a(bpVar);
                bpVar.flush();
                long a = bpVar.a();
                if (c.length() != a) {
                    throw new IncompleteFileException(a, c.length());
                }
            } finally {
                fileOutputStream.close();
            }
        } catch (Throwable e) {
            this.e.a(CacheErrorCategory.WRITE_UPDATE_FILE_NOT_FOUND, b, "updateResource", e);
            throw e;
        }
    }

    File a(String str) {
        d dVar = new d(str, null);
        return dVar.a(b(dVar.b));
    }

    private File b(String str) {
        return new File(this.d, String.valueOf(Math.abs(str.hashCode() % 100)));
    }

    public void a() {
        a.a(this.c, new e());
    }

    private void a(File file, String str) throws IOException {
        try {
            FileUtils.a(file);
        } catch (Throwable e) {
            this.e.a(CacheErrorCategory.WRITE_CREATE_DIR, b, str, e);
            throw e;
        }
    }

    public aw a(String str, Object obj) throws IOException {
        d dVar = new d(str, null);
        File b = b(dVar.b);
        if (!b.exists()) {
            a(b, "createTemporary");
        }
        try {
            return aw.a(dVar.b(b));
        } catch (Throwable e) {
            this.e.a(CacheErrorCategory.WRITE_CREATE_TEMPFILE, b, "createTemporary", e);
            throw e;
        }
    }

    public aw a(String str, av avVar, Object obj) throws IOException {
        File c = ((aw) avVar).c();
        File a = a(str);
        try {
            FileUtils.a(c, a);
            if (a.exists()) {
                a.setLastModified(this.f.a());
            }
            return aw.a(a);
        } catch (Throwable e) {
            CacheErrorCategory cacheErrorCategory;
            Throwable cause = e.getCause();
            if (cause == null) {
                cacheErrorCategory = CacheErrorCategory.WRITE_RENAME_FILE_OTHER;
            } else if (cause instanceof ParentDirNotFoundException) {
                cacheErrorCategory = CacheErrorCategory.WRITE_RENAME_FILE_TEMPFILE_PARENT_NOT_FOUND;
            } else if (cause instanceof FileNotFoundException) {
                cacheErrorCategory = CacheErrorCategory.WRITE_RENAME_FILE_TEMPFILE_NOT_FOUND;
            } else {
                cacheErrorCategory = CacheErrorCategory.WRITE_RENAME_FILE_OTHER;
            }
            this.e.a(cacheErrorCategory, b, "commit", e);
            throw e;
        }
    }

    public aw b(String str, Object obj) {
        File a = a(str);
        if (!a.exists()) {
            return null;
        }
        a.setLastModified(this.f.a());
        return aw.a(a);
    }

    public long a(m mVar) {
        return a(((c) mVar).b().c());
    }

    private long a(File file) {
        if (!file.exists()) {
            return 0;
        }
        return !file.delete() ? -1 : file.length();
    }

    public void b() {
        a.a(this.c);
    }

    public List<m> c() throws IOException {
        Object bVar = new b();
        a.a(this.d, bVar);
        return bVar.a();
    }

    private d b(File file) {
        d c = d.c(file);
        if (c == null) {
            return null;
        }
        if (!b(c.b).equals(file.getParentFile())) {
            c = null;
        }
        return c;
    }
}
