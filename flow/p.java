package flow;

import java.util.Iterator;

/* compiled from: Twttr */
class p<T> implements Iterator<T> {
    private final Iterator<n> a;

    public p(Iterator<n> it) {
        this.a = it;
    }

    public boolean hasNext() {
        return this.a.hasNext();
    }

    public T next() {
        return ((n) this.a.next()).a;
    }

    public void remove() {
        throw new UnsupportedOperationException();
    }
}
