package com.twitter.util.collection;

import com.twitter.util.object.ObjectUtils;
import com.twitter.util.serialization.n;
import java.util.NoSuchElementException;

/* compiled from: Twttr */
public final class x<T> {
    private static final x<?> a;
    private final T b;

    static {
        a = new x(null);
    }

    private x(T t) {
        this.b = t;
    }

    public static <T> x<T> a() {
        return (x) ObjectUtils.a(a);
    }

    public static <T> x<T> a(T t) {
        return new x(t);
    }

    public static <T> x<T> b(T t) {
        if (t == null) {
            return a();
        }
        return a((Object) t);
    }

    public T b() {
        if (this.b != null) {
            return this.b;
        }
        throw new NoSuchElementException("No value present");
    }

    public boolean c() {
        return this.b != null;
    }

    public T c(T t) {
        return this.b == null ? t : this.b;
    }

    public static <S> S a(x<S> xVar) {
        if (xVar == null || !xVar.c()) {
            return null;
        }
        return xVar.b();
    }

    public boolean equals(Object obj) {
        return this == obj || ((obj instanceof x) && ObjectUtils.a(this.b, ((x) obj).b));
    }

    public int hashCode() {
        return this.b == null ? 0 : this.b.hashCode();
    }

    public String toString() {
        if (this.b == null) {
            return "Optional.empty";
        }
        return String.format("Optional[%s]", new Object[]{this.b});
    }

    public static <T> n<x<T>> a(n<T> nVar) {
        return new y(nVar);
    }
}
