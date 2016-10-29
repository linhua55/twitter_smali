package com.twitter.model.search;

import com.twitter.util.serialization.n;

/* compiled from: Twttr */
public class g {
    public static final n<g> a;
    public final String b;
    public final long c;
    public final long d;

    static {
        a = new i();
    }

    public g(String str, long j, long j2) {
        this.b = str;
        this.c = j;
        this.d = j2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        g gVar = (g) obj;
        boolean equals = this.b == null ? gVar.b == null : this.b.equals(gVar.b);
        if (equals && this.c == gVar.c && this.d == gVar.d) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return ((((this.b != null ? this.b.hashCode() : 0) * 31) + ((int) this.c)) * 31) + ((int) this.d);
    }
}
