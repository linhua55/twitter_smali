package com.twitter.model.core;

import com.twitter.util.object.ObjectUtils;
import com.twitter.util.serialization.n;

/* compiled from: Twttr */
public class bt {
    public static final n<bt> a;
    public final String b;
    public final String c;
    public final double d;

    static {
        a = new bv();
    }

    public bt(String str, String str2, double d) {
        this.b = str;
        this.c = str2;
        this.d = d;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof bt)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        bt btVar = (bt) obj;
        if (this.b.equals(btVar.b) && this.c.equals(btVar.c) && this.d == btVar.d) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (((ObjectUtils.b(this.b) * 31) + ObjectUtils.b(this.c)) * 31) + ObjectUtils.a(this.d);
    }
}
