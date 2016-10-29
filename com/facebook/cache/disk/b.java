package com.facebook.cache.disk;

import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* compiled from: Twttr */
class b implements com.facebook.common.file.b {
    final /* synthetic */ DefaultDiskStorage a;
    private final List<m> b;

    private b(DefaultDiskStorage defaultDiskStorage) {
        this.a = defaultDiskStorage;
        this.b = new ArrayList();
    }

    public void a(File file) {
    }

    public void b(File file) {
        d a = this.a.b(file);
        if (a != null && a.a == FileType.CONTENT) {
            this.b.add(new c(file, null));
        }
    }

    public void c(File file) {
    }

    public List<m> a() {
        return Collections.unmodifiableList(this.b);
    }
}
