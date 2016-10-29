package com.twitter.util;

import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;

/* compiled from: Twttr */
public class aa<T> implements z<T> {
    private final Set<z<T>> a;

    public aa() {
        this.a = new CopyOnWriteArraySet();
    }

    public void a(z<T> zVar) {
        this.a.add(zVar);
    }

    public void a(T t) {
        for (z a : this.a) {
            a.a(t);
        }
    }
}
