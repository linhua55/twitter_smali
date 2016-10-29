package com.facebook.cache.disk;

import defpackage.aw;
import defpackage.bx;
import java.io.File;

/* compiled from: Twttr */
class c implements m {
    final /* synthetic */ DefaultDiskStorage a;
    private final aw b;
    private long c;
    private long d;

    private c(DefaultDiskStorage defaultDiskStorage, File file) {
        this.a = defaultDiskStorage;
        bx.a((Object) file);
        this.b = aw.a(file);
        this.c = -1;
        this.d = -1;
    }

    public long a() {
        if (this.d < 0) {
            this.d = this.b.c().lastModified();
        }
        return this.d;
    }

    public aw b() {
        return this.b;
    }

    public long c() {
        if (this.c < 0) {
            this.c = this.b.b();
        }
        return this.c;
    }
}
