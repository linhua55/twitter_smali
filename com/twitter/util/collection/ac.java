package com.twitter.util.collection;

/* compiled from: Twttr */
public class ac<T> extends ab<T> {
    private final Object a;

    public ac(int i) {
        super(i);
        this.a = new Object();
    }

    public T a() {
        T a;
        synchronized (this.a) {
            a = super.a();
        }
        return a;
    }

    public boolean a(T t) {
        boolean a;
        synchronized (this.a) {
            a = super.a(t);
        }
        return a;
    }
}
