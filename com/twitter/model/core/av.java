package com.twitter.model.core;

import com.twitter.util.aj;
import com.twitter.util.object.ObjectUtils;
import com.twitter.util.serialization.n;

/* compiled from: Twttr */
public class av {
    public static final n<av> a;
    public final String b;
    public final String c;
    public final boolean d;
    public final boolean e;

    static {
        a = new ay(null);
    }

    private av(ax axVar) {
        this.b = axVar.a;
        this.c = axVar.b;
        this.d = axVar.c;
        this.e = axVar.d;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof av)) {
            return false;
        }
        av avVar = (av) obj;
        if (aj.a(this.b, avVar.b) && aj.a(this.c, avVar.c) && this.d == avVar.d && this.e == avVar.e) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (((((ObjectUtils.b(this.b) * 31) + ObjectUtils.b(this.c)) * 31) + ObjectUtils.a(this.d)) * 31) + ObjectUtils.a(this.e);
    }
}
