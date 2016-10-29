package com.twitter.model.timeline;

import com.twitter.util.collection.n;
import com.twitter.util.object.ObjectUtils;
import com.twitter.util.serialization.d;
import java.util.List;

/* compiled from: Twttr */
public class w {
    public static final d<w, y> a;
    public final String b;
    public final aj c;
    public final List<Long> d;

    static {
        a = new z();
    }

    public boolean equals(Object obj) {
        return this == obj || ((obj instanceof w) && a((w) obj));
    }

    public boolean a(w wVar) {
        return this == wVar || (wVar != null && ObjectUtils.a(this.b, wVar.b) && ObjectUtils.a(this.c, wVar.c) && ObjectUtils.a(this.d, wVar.d));
    }

    public int hashCode() {
        return (((ObjectUtils.b(this.b) * 31) + ObjectUtils.b(this.c)) * 31) + ObjectUtils.a(this.d);
    }

    private w(y yVar) {
        this.b = yVar.a;
        this.c = yVar.b;
        this.d = n.a(yVar.c);
    }
}
