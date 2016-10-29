package com.facebook.cache.disk;

import com.facebook.cache.common.CacheErrorLogger;
import com.facebook.cache.common.CacheErrorLogger.CacheErrorCategory;
import com.facebook.common.file.FileUtils;
import com.facebook.common.file.a;
import defpackage.bx;
import defpackage.bz;
import defpackage.cb;
import java.io.File;
import java.io.IOException;

/* compiled from: Twttr */
public class f implements r {
    private static final Class<?> b;
    volatile g a;
    private final int c;
    private final bz<File> d;
    private final String e;
    private final CacheErrorLogger f;

    static {
        b = f.class;
    }

    public f(int i, bz<File> bzVar, String str, CacheErrorLogger cacheErrorLogger) {
        this.c = i;
        this.f = cacheErrorLogger;
        this.d = bzVar;
        this.e = str;
        this.a = new g(null, null);
    }

    public synchronized l a() throws IOException {
        if (c()) {
            b();
            d();
        }
        return (l) bx.a(this.a.a);
    }

    private boolean c() {
        g gVar = this.a;
        return gVar.a == null || gVar.b == null || !gVar.b.exists();
    }

    void b() {
        if (this.a.a != null && this.a.b != null) {
            a.b(this.a.b);
        }
    }

    private void d() throws IOException {
        File file = new File((File) this.d.a(), this.e);
        a(file);
        this.a = new g(file, new DefaultDiskStorage(file, this.c, this.f));
    }

    void a(File file) throws IOException {
        try {
            FileUtils.a(file);
            cb.b(b, "Created cache directory %s", file.getAbsolutePath());
        } catch (Throwable e) {
            this.f.a(CacheErrorCategory.WRITE_CREATE_DIR, b, "createRootDirectoryIfNecessary", e);
            throw e;
        }
    }
}
