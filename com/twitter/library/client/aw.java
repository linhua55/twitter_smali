package com.twitter.library.client;

import com.twitter.library.service.x;
import com.twitter.util.object.ObjectUtils;

/* compiled from: Twttr */
public class aw {
    public final String a;
    public final int b;
    public final int c;
    public final long d;
    public final x e;

    public aw(String str, x xVar, int i, int i2, long j) {
        this.a = str;
        this.b = i;
        this.e = xVar;
        this.c = i2;
        this.d = j;
    }

    public boolean equals(Object obj) {
        return this == obj || ((obj instanceof aw) && ObjectUtils.a(this.a, ((aw) obj).a));
    }

    public int hashCode() {
        return ObjectUtils.b(this.a);
    }
}
