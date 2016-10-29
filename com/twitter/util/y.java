package com.twitter.util;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;

/* compiled from: Twttr */
public class y<T> {
    private final Collection<z<T>> a;

    public y() {
        this.a = Collections.synchronizedCollection(new HashSet());
    }

    public boolean a(z<T> zVar) {
        return this.a.add(zVar);
    }

    public boolean b(z<T> zVar) {
        return this.a.remove(zVar);
    }

    public void a(T t) {
        synchronized (this.a) {
            for (z a : new ArrayList(this.a)) {
                a.a(t);
            }
        }
    }

    public void i() {
        this.a.clear();
    }

    public boolean j() {
        return !this.a.isEmpty();
    }
}
