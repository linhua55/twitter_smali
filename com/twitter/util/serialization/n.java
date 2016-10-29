package com.twitter.util.serialization;

import com.twitter.util.object.e;
import java.io.IOException;

/* compiled from: Twttr */
public abstract class n<T> {
    public abstract T a(p pVar) throws IOException, ClassNotFoundException;

    public abstract void b(q qVar, T t) throws IOException;

    public final T c(p pVar) throws IOException, ClassNotFoundException {
        return e.a(a(pVar));
    }
}
