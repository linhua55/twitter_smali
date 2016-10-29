package com.google.android.gms.common.data;

import com.google.android.gms.common.internal.bm;
import java.util.Iterator;
import java.util.NoSuchElementException;

public class f<T> implements Iterator<T> {
    protected final b<T> a;
    protected int b;

    public f(b<T> bVar) {
        this.a = (b) bm.a(bVar);
        this.b = -1;
    }

    public boolean hasNext() {
        return this.b < this.a.b() + -1;
    }

    public T next() {
        if (hasNext()) {
            b bVar = this.a;
            int i = this.b + 1;
            this.b = i;
            return bVar.a(i);
        }
        throw new NoSuchElementException("Cannot advance the iterator beyond " + this.b);
    }

    public void remove() {
        throw new UnsupportedOperationException("Cannot remove elements from a DataBufferIterator");
    }
}
