package com.twitter.model.ads;

import com.twitter.util.object.ObjectUtils;
import com.twitter.util.serialization.d;

/* compiled from: Twttr */
public class a {
    public static final d<a, d> a;
    public final long b;
    public final String c;
    public final int d;
    public final boolean e;
    public final boolean f;
    public final boolean g;

    static {
        a = new c();
    }

    public a(d dVar) {
        this.b = dVar.a;
        this.c = dVar.b;
        this.d = dVar.c;
        this.e = dVar.d;
        this.f = dVar.e;
        this.g = dVar.f;
    }

    public boolean equals(Object obj) {
        return this == obj || ((obj instanceof a) && a((a) obj));
    }

    public boolean a(a aVar) {
        return this == aVar || (aVar != null && this.b == aVar.b && ObjectUtils.a(this.c, aVar.c) && this.d == aVar.d && this.e == aVar.e && this.f == aVar.f && this.g == aVar.g);
    }

    public int hashCode() {
        return (((((((((ObjectUtils.a(this.b) * 31) + ObjectUtils.b(this.c)) * 31) + this.d) * 31) + ObjectUtils.a(this.e)) * 31) + ObjectUtils.a(this.f)) * 31) + ObjectUtils.a(this.g);
    }
}
