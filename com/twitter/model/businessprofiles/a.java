package com.twitter.model.businessprofiles;

import com.twitter.util.object.ObjectUtils;
import com.twitter.util.object.e;
import com.twitter.util.serialization.d;

/* compiled from: Twttr */
public class a {
    public static final d<a, d> a;
    public final String b;
    public final String c;
    public final String d;
    public final String e;
    public final String f;
    public final String g;
    public final String h;
    public final com.twitter.model.geo.d i;

    static {
        a = new c();
    }

    public a(d dVar) {
        this.b = e.b(dVar.a);
        this.c = dVar.b;
        this.d = dVar.c;
        this.e = e.b(dVar.d);
        this.f = dVar.e;
        this.g = e.b(dVar.f);
        this.h = e.b(dVar.g);
        this.i = dVar.h;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        a aVar = (a) obj;
        if (ObjectUtils.a(this.b, aVar.b) && ObjectUtils.a(this.c, aVar.c) && ObjectUtils.a(this.d, aVar.d) && ObjectUtils.a(this.e, aVar.e) && ObjectUtils.a(this.f, aVar.f) && ObjectUtils.a(this.g, aVar.g) && ObjectUtils.a(this.h, aVar.h) && ObjectUtils.a(this.i, aVar.i)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (((((((((((((ObjectUtils.b(this.b) * 31) + ObjectUtils.b(this.c)) * 31) + ObjectUtils.b(this.d)) * 31) + ObjectUtils.b(this.e)) * 31) + ObjectUtils.b(this.f)) * 31) + ObjectUtils.b(this.g)) * 31) + ObjectUtils.b(this.h)) * 31) + ObjectUtils.b(this.i);
    }
}
