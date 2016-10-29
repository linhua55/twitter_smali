package com.twitter.model.profile;

import com.twitter.util.object.ObjectUtils;
import com.twitter.util.object.e;

/* compiled from: Twttr */
public class d {
    public static final com.twitter.util.serialization.d<d, f> a;
    public final String b;
    public final String c;
    public final long d;
    public final boolean e;

    static {
        a = new g(null);
    }

    public d(f fVar) {
        this.b = e.b(fVar.a);
        this.c = e.b(fVar.b);
        this.d = fVar.c;
        this.e = fVar.d;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        d dVar = (d) obj;
        if (ObjectUtils.a(this.c, dVar.c) && ObjectUtils.a(this.b, dVar.b) && this.d == dVar.d && this.e == dVar.e) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (this.e ? 1 : 0) + (((((this.c.hashCode() * 31) + this.b.hashCode()) * 31) + ((int) this.d)) * 31);
    }
}
