package com.twitter.util.collection;

import com.twitter.util.object.e;
import java.util.NoSuchElementException;

/* compiled from: Twttr */
public class ao<S, E> {
    private final S a;
    private final E b;

    ao(S s, E e) {
        this.a = s;
        this.b = e;
        e.a(s, e);
    }

    public S a() {
        if (this.a != null) {
            return this.a;
        }
        throw new NoSuchElementException("No success value present");
    }

    public E b() {
        if (this.b != null) {
            return this.b;
        }
        throw new NoSuchElementException("No error value present");
    }

    public boolean c() {
        return this.a != null;
    }

    public static <S, E> ao<S, E> a(S s) {
        return new ao(s, null);
    }

    public static <S, E> ao<S, E> b(E e) {
        return new ao(null, e);
    }
}
