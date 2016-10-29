package com.twitter.library.scribe;

import com.twitter.util.object.ObjectUtils;
import com.twitter.util.serialization.d;

/* compiled from: Twttr */
public class e {
    public static final d<e, h> a;
    public final String b;

    static {
        a = new g(null);
    }

    private e(h hVar) {
        this.b = h.a(hVar);
    }

    public boolean equals(Object obj) {
        return this == obj || ((obj instanceof e) && a((e) obj));
    }

    public boolean a(e eVar) {
        return this == eVar || (eVar != null && ObjectUtils.a(this.b, eVar.b));
    }

    public int hashCode() {
        return ObjectUtils.b(this.b);
    }
}
