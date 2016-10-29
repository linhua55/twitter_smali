package com.facebook.cache.disk;

import com.facebook.common.file.b;
import defpackage.bx;
import java.io.File;

/* compiled from: Twttr */
class e implements b {
    final /* synthetic */ DefaultDiskStorage a;
    private boolean b;

    private e(DefaultDiskStorage defaultDiskStorage) {
        this.a = defaultDiskStorage;
    }

    public void a(File file) {
        if (!this.b && file.equals(this.a.d)) {
            this.b = true;
        }
    }

    public void b(File file) {
        if (!this.b || !d(file)) {
            file.delete();
        }
    }

    public void c(File file) {
        if (!(this.a.c.equals(file) || this.b)) {
            file.delete();
        }
        if (this.b && file.equals(this.a.d)) {
            this.b = false;
        }
    }

    private boolean d(File file) {
        boolean z = false;
        d a = this.a.b(file);
        if (a == null) {
            return false;
        }
        if (a.a == FileType.TEMP) {
            return e(file);
        }
        if (a.a == FileType.CONTENT) {
            z = true;
        }
        bx.b(z);
        return true;
    }

    private boolean e(File file) {
        return file.lastModified() > this.a.f.a() - DefaultDiskStorage.a;
    }
}
