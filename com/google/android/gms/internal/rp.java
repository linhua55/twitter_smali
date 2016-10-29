package com.google.android.gms.internal;

import com.google.android.gms.common.internal.bj;

public class rp {
    public final String a;
    public final double b;
    public final double c;
    public final double d;
    public final int e;

    public rp(String str, double d, double d2, double d3, int i) {
        this.a = str;
        this.c = d;
        this.b = d2;
        this.d = d3;
        this.e = i;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof rp)) {
            return false;
        }
        rp rpVar = (rp) obj;
        return bj.a(this.a, rpVar.a) && this.b == rpVar.b && this.c == rpVar.c && this.e == rpVar.e && Double.compare(this.d, rpVar.d) == 0;
    }

    public int hashCode() {
        return bj.a(this.a, Double.valueOf(this.b), Double.valueOf(this.c), Double.valueOf(this.d), Integer.valueOf(this.e));
    }

    public String toString() {
        return bj.a((Object) this).a("name", this.a).a("minBound", Double.valueOf(this.c)).a("maxBound", Double.valueOf(this.b)).a("percent", Double.valueOf(this.d)).a("count", Integer.valueOf(this.e)).toString();
    }
}
