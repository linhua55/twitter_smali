package com.twitter.media.util;

import com.twitter.media.model.MediaType;
import com.twitter.util.object.ObjectUtils;
import java.io.File;

/* compiled from: Twttr */
public abstract class k {
    public final File h;
    public final MediaType i;
    public final long j;
    public String k;
    public String l;
    public p m;

    protected abstract String bk_();

    protected k(File file, MediaType mediaType) {
        this.h = file;
        this.j = file.lastModified();
        this.i = mediaType;
    }

    public boolean equals(Object obj) {
        return this == obj || ((obj instanceof k) && a((k) obj));
    }

    public boolean a(k kVar) {
        return this == kVar || (kVar != null && this.i == kVar.i && ObjectUtils.a(this.h, kVar.h) && this.j == kVar.j);
    }

    public int hashCode() {
        return ((this.h.hashCode() + 0) * 31) + ObjectUtils.a(this.j);
    }

    public File c() {
        File file = new File(bk_());
        return file.exists() ? file : null;
    }
}
