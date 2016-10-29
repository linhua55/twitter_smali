package com.twitter.util.collection;

import com.twitter.util.object.e;

/* compiled from: Twttr */
public final class z<T, U> extends w<T, U> {
    public static <T, U> z<T, U> a(T t, U u) {
        return new z(t, u);
    }

    private z(T t, U u) {
        super(t, u);
    }

    public T a() {
        return e.a(super.a());
    }

    public U b() {
        return e.a(super.b());
    }
}
