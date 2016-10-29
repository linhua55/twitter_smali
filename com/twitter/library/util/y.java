package com.twitter.library.util;

import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;

/* compiled from: Twttr */
public class y<T> implements Iterator<List<T>> {
    private final int a;
    private final List<T> b;
    private int c;

    public /* synthetic */ Object next() {
        return a();
    }

    public y(int i, List<T> list) {
        this.a = i;
        this.b = list;
        this.c = 0;
    }

    public boolean hasNext() {
        return this.c * this.a < this.b.size();
    }

    public List<T> a() {
        if (hasNext()) {
            int i = this.c * this.a;
            int min = Math.min(this.a + i, this.b.size());
            this.c++;
            return this.b.subList(i, min);
        }
        throw new NoSuchElementException();
    }

    public void remove() {
        throw new UnsupportedOperationException();
    }
}
