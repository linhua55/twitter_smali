package com.google.gson.internal;

import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* compiled from: Twttr */
abstract class w<T> implements Iterator<T> {
    x<K, V> b;
    x<K, V> c;
    int d;
    final /* synthetic */ LinkedTreeMap e;

    private w(LinkedTreeMap linkedTreeMap) {
        this.e = linkedTreeMap;
        this.b = this.e.header.d;
        this.c = null;
        this.d = this.e.modCount;
    }

    public final boolean hasNext() {
        return this.b != this.e.header;
    }

    final x<K, V> b() {
        x<K, V> xVar = this.b;
        if (xVar == this.e.header) {
            throw new NoSuchElementException();
        } else if (this.e.modCount != this.d) {
            throw new ConcurrentModificationException();
        } else {
            this.b = xVar.d;
            this.c = xVar;
            return xVar;
        }
    }

    public final void remove() {
        if (this.c == null) {
            throw new IllegalStateException();
        }
        this.e.a(this.c, true);
        this.c = null;
        this.d = this.e.modCount;
    }
}
