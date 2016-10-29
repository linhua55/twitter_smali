package com.twitter.model.av;

import com.twitter.util.object.ObjectUtils;

/* compiled from: Twttr */
public class c {
    public static final c a;
    public final int b;
    public final String c;

    static {
        a = new c(1, null);
    }

    public static c a(String str) {
        return new c(1, str);
    }

    public c(int i, String str) {
        this.b = i;
        this.c = str;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        if (this.b == cVar.b && ObjectUtils.a(this.c, cVar.c)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return ObjectUtils.a(Integer.valueOf(this.b), this.c);
    }
}
