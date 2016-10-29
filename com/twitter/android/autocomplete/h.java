package com.twitter.android.autocomplete;

import sw;

/* compiled from: Twttr */
public class h<T, S> {
    private final sw<T, S> a;
    private final n<T, S> b;
    private final m<T> c;
    private l<T, S> d;

    public h(sw<T, S> swVar, n<T, S> nVar) {
        this.c = new m();
        this.a = swVar;
        this.b = nVar;
    }

    public synchronized void a(T t) {
        if (this.d == null || !this.d.a()) {
            this.d = new l(this.a, this.b, this.c);
            this.d.start();
        }
        this.d.a(t);
    }

    public synchronized void a() {
        if (this.d == null || !this.d.a()) {
            this.c.a.a(null);
            this.c.b = null;
        } else {
            this.d.b();
        }
    }
}
