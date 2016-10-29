package com.twitter.util.collection;

import com.twitter.util.object.ObjectUtils;

/* compiled from: Twttr */
public class w<T, U> {
    private final T a;
    private final U b;

    protected w(T t, U u) {
        this.a = t;
        this.b = u;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        w wVar = (w) obj;
        if (ObjectUtils.a(this.a, wVar.a()) && ObjectUtils.a(this.b, wVar.b())) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (ObjectUtils.b(this.a) * 31) + ObjectUtils.b(this.b);
    }

    public T a() {
        return this.a;
    }

    public U b() {
        return this.b;
    }
}
