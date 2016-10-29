package com.twitter.util.serialization;

import java.io.IOException;

/* compiled from: Twttr */
public abstract class ap<T> extends n<T> {
    protected abstract void a(q qVar, T t) throws IOException;

    protected abstract T a_(p pVar) throws IOException, ClassNotFoundException;

    public final void b(q qVar, T t) throws IOException {
        if (!m.a(qVar, (Object) t)) {
            h hVar = qVar instanceof h ? (h) qVar : null;
            int c = hVar != null ? hVar.c() : 0;
            a(qVar, t);
            if (hVar != null && hVar.a(c) == 7) {
                throw new IllegalStateException("Values with null in the first field are ambiguous.");
            }
        }
    }

    public final T a(p pVar) throws IOException, ClassNotFoundException {
        return !m.a(pVar) ? a_(pVar) : null;
    }
}
