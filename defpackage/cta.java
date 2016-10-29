package defpackage;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* compiled from: Twttr */
/* renamed from: cta */
public abstract class cta<T> implements Iterator<T> {
    protected abstract T a();

    public final T next() {
        b();
        return a();
    }

    public final void remove() {
        throw new UnsupportedOperationException();
    }

    protected void b() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
    }
}
