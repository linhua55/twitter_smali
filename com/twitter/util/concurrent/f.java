package com.twitter.util.concurrent;

import java.util.concurrent.Executor;

/* compiled from: Twttr */
public class f<V> implements e<V> {
    private Executor a;
    private e<V> b;

    public f<V> a(Executor executor) {
        this.a = executor;
        return this;
    }

    public f<V> a(e<V> eVar) {
        this.b = eVar;
        return this;
    }

    public void a(V v) {
        if (this.a == null) {
            throw new IllegalStateException("The executor must not be null");
        }
        e eVar = this.b;
        if (eVar == null) {
            throw new IllegalStateException("The callback must not be null");
        }
        this.a.execute(new g(this, eVar, v));
    }
}
