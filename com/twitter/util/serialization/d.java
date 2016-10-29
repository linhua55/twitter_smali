package com.twitter.util.serialization;

import com.twitter.util.object.f;
import java.io.EOFException;
import java.io.IOException;
import java.io.OptionalDataException;

/* compiled from: Twttr */
public abstract class d<T, B extends f<T>> extends k<T> {
    protected abstract void a(p pVar, B b, int i) throws IOException, ClassNotFoundException;

    protected abstract B b();

    protected d() {
    }

    protected d(int i) {
        super(i);
    }

    protected final T b(p pVar, int i) throws IOException, ClassNotFoundException {
        f b = b();
        b(pVar, b, i);
        return b.q();
    }

    public void b(p pVar, B b, int i) throws IOException, ClassNotFoundException {
        try {
            a(pVar, b, i);
        } catch (OptionalDataException e) {
        } catch (EOFException e2) {
        } catch (OptionalFieldException e3) {
        }
    }
}
