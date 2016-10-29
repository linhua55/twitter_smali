package com.twitter.util.concurrent;

import java.util.concurrent.Callable;
import java.util.concurrent.Executor;

/* compiled from: Twttr */
public class c<V> implements a<V> {
    private Executor a;
    private Callable<V> b;
    private e<V> c;
    private ObservablePromise<V> d;

    public /* synthetic */ Object call() throws Exception {
        return a();
    }

    public c<V> a(Executor executor) {
        this.a = executor;
        return this;
    }

    public c<V> a(Callable<V> callable) {
        this.b = callable;
        return this;
    }

    public c<V> a(e<V> eVar) {
        this.c = eVar;
        return this;
    }

    public j<V> a() {
        if (this.a == null) {
            throw new IllegalStateException("The executor must not be null");
        } else if (this.b == null) {
            throw new IllegalStateException("The callable must not be null");
        } else {
            Callable callable = this.b;
            e eVar = this.c;
            j observablePromise = this.d != null ? this.d : new ObservablePromise();
            this.a.execute(new d(this, observablePromise, callable, eVar));
            return observablePromise;
        }
    }
}
