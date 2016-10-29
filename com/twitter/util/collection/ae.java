package com.twitter.util.collection;

import java.lang.ref.Reference;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* compiled from: Twttr */
class ae implements Iterator<T> {
    final /* synthetic */ ReferenceList a;
    private int b;

    private ae(ReferenceList referenceList) {
        this.a = referenceList;
        this.b = -1;
    }

    public boolean hasNext() {
        boolean z;
        synchronized (this.a.a) {
            int i = this.b + 1;
            while (i < this.a.a.size()) {
                if (((Reference) this.a.a.get(i)).get() == null) {
                    this.a.a.remove(i);
                } else {
                    z = true;
                }
            }
            z = false;
        }
        return z;
    }

    public T next() {
        T t;
        synchronized (this.a.a) {
            if (hasNext()) {
                this.b++;
                t = ((Reference) this.a.a.get(this.b)).get();
            } else {
                throw new NoSuchElementException();
            }
        }
        return t;
    }

    public void remove() {
        synchronized (this.a.a) {
            if (this.b == -1) {
                throw new NoSuchElementException();
            }
            this.a.a.remove(this.b);
        }
    }
}
