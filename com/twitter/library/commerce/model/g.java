package com.twitter.library.commerce.model;

import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import java.io.IOException;

/* compiled from: Twttr */
public abstract class g<T extends f> extends l<T> {
    protected g() {
    }

    protected void a(q qVar, T t) throws IOException {
        super.a(qVar, (CreditCard) t);
        qVar.b(t.f()).b(t.g()).b(t.h());
    }

    protected void a(p pVar, T t, int i) throws IOException, ClassNotFoundException {
        super.a(pVar, t, i);
        t.a(pVar.i());
        t.b(pVar.i());
        t.c(pVar.i());
    }
}
