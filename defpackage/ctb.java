package defpackage;

import java.util.ListIterator;
import java.util.NoSuchElementException;

/* compiled from: Twttr */
/* renamed from: ctb */
public abstract class ctb<T> implements ListIterator<T> {
    private final int a;
    private int b;

    protected abstract T a(int i);

    protected ctb(int i, int i2) {
        this.a = i;
        this.b = i2;
    }

    public boolean hasNext() {
        return this.b < this.a;
    }

    public T next() {
        if (hasNext()) {
            int i = this.b;
            this.b = i + 1;
            return a(i);
        }
        throw new NoSuchElementException();
    }

    public boolean hasPrevious() {
        return this.b != 0;
    }

    public T previous() {
        if (hasPrevious()) {
            int i = this.b - 1;
            this.b = i;
            return a(i);
        }
        throw new NoSuchElementException();
    }

    public int nextIndex() {
        return this.b;
    }

    public int previousIndex() {
        return this.b - 1;
    }

    public final void remove() {
        throw new UnsupportedOperationException();
    }

    public final void set(T t) {
        throw new UnsupportedOperationException();
    }

    public final void add(T t) {
        throw new UnsupportedOperationException();
    }
}
