package com.twitter.model.timeline;

import com.twitter.util.object.ObjectUtils;
import com.twitter.util.serialization.n;
import java.util.List;

/* compiled from: Twttr */
public class l {
    public static final n<l> a;
    public final i b;
    public final List<i> c;

    static {
        a = new n();
    }

    private l(i iVar, List<i> list) {
        this.b = iVar;
        this.c = com.twitter.util.collection.n.a(list);
    }

    public boolean equals(Object obj) {
        return this == obj || ((obj instanceof l) && a((l) obj));
    }

    public boolean a(l lVar) {
        return this == lVar || (lVar != null && ObjectUtils.a(this.b, lVar.b) && ObjectUtils.a(this.c, lVar.c));
    }

    public int hashCode() {
        return (ObjectUtils.b(this.b) * 31) + ObjectUtils.a(this.c);
    }

    public static l a(i iVar, List<i> list) {
        return new l(iVar, list);
    }
}
