package com.twitter.internal.android.service;

import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public class ab<T> {
    private final List<T> a;

    public ab() {
        this.a = new ArrayList();
    }

    public synchronized List<T> a() {
        return new ArrayList(this.a);
    }

    public synchronized T b() {
        T t;
        if (this.a.isEmpty()) {
            t = null;
        } else {
            t = this.a.get(this.a.size() - 1);
        }
        return t;
    }

    public synchronized void a(T t) {
        this.a.add(t);
    }
}
