package com.twitter.model.core;

import com.twitter.util.object.ObjectUtils;
import com.twitter.util.object.e;
import com.twitter.util.serialization.n;

/* compiled from: Twttr */
public class b extends e {
    public static final n<b> a;
    public static final n<j<b>> b;
    public final String c;

    public /* synthetic */ f b() {
        return a();
    }

    static {
        a = new d();
        b = j.a(a);
    }

    b(c cVar) {
        super(cVar);
        this.c = e.b(cVar.a);
    }

    public c a() {
        return new c(this);
    }

    public boolean equals(Object obj) {
        return this == obj || ((obj instanceof b) && a((b) obj));
    }

    public boolean a(b bVar) {
        return this == bVar || (super.a((e) bVar) && ObjectUtils.a(this.c, bVar.c));
    }

    public int hashCode() {
        return (super.hashCode() * 31) + ObjectUtils.b(this.c);
    }
}
