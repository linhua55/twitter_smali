package com.twitter.model.dms;

import com.twitter.util.object.ObjectUtils;
import com.twitter.util.object.f;

/* compiled from: Twttr */
public abstract class b<E extends a, B extends b<E, B>> extends f<E> {
    private long a;
    private String b;
    private long c;

    public b() {
        this.a = -1;
        this.c = -1;
    }

    public b(a aVar) {
        this.a = -1;
        this.c = -1;
        this.a = aVar.g;
        this.b = aVar.h;
        this.c = aVar.i;
    }

    public B b(long j) {
        this.a = j;
        return (b) ObjectUtils.a(this);
    }

    public B b(String str) {
        this.b = str;
        return (b) ObjectUtils.a(this);
    }

    public B c(long j) {
        this.c = j;
        return (b) ObjectUtils.a(this);
    }
}
