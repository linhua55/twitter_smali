package com.twitter.model.core;

import com.twitter.util.object.ObjectUtils;
import com.twitter.util.serialization.n;

/* compiled from: Twttr */
public class ag {
    public static final n<ag> a;
    public final long b;
    public final String c;
    public final String d;

    static {
        a = new ai(null);
    }

    public ag(long j, String str, String str2) {
        this.b = j;
        this.c = str.trim();
        this.d = str2;
    }

    public boolean equals(Object obj) {
        return (obj instanceof ag) && ((ag) obj).b == this.b;
    }

    public int hashCode() {
        return ObjectUtils.a(this.b);
    }
}
