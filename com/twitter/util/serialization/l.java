package com.twitter.util.serialization;

/* compiled from: Twttr */
public class l<T> {
    public final Class<T> a;
    public final n<? super T> b;

    public l(Class<T> cls, n<? super T> nVar) {
        this.a = cls;
        this.b = nVar;
    }

    public static <T> l<T> a(Class<T> cls, n<? super T> nVar) {
        return new l(cls, nVar);
    }
}
