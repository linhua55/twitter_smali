package com.twitter.model.core;

import com.twitter.util.serialization.d;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import java.io.IOException;

/* compiled from: Twttr */
public abstract class g<E extends e, B extends f<E, B>> extends d<E, B> {
    protected g(int i) {
        super(i);
    }

    protected void a(q qVar, E e) throws IOException {
        qVar.e(e.f).e(e.g).e(e.h);
    }

    protected void a(p pVar, B b, int i) throws IOException, ClassNotFoundException {
        if (i >= 2) {
            b.c(pVar.e());
        }
        b.a(pVar.e()).b(pVar.e());
    }
}
