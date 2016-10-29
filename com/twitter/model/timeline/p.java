package com.twitter.model.timeline;

import com.twitter.util.object.ObjectUtils;
import com.twitter.util.serialization.n;

/* compiled from: Twttr */
public class p {
    public static final n<p> a;
    public final String b;
    public final String c;

    static {
        a = new r();
    }

    public p(String str, String str2) {
        this.b = str;
        this.c = str2;
    }

    public boolean equals(Object obj) {
        return this == obj || ((obj instanceof p) && a((p) obj));
    }

    public boolean a(p pVar) {
        return this == pVar || (pVar != null && ObjectUtils.a(this.b, pVar.b) && ObjectUtils.a(this.c, pVar.c));
    }

    public int hashCode() {
        return ObjectUtils.a(new Object[]{this.b, this.c});
    }
}
