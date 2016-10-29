package com.twitter.library.commerce.model;

import com.twitter.util.serialization.k;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import com.twitter.util.serialization.s;
import java.io.IOException;

/* compiled from: Twttr */
public abstract class l<T extends CreditCard> extends k<T> {
    protected l() {
    }

    protected void a(q qVar, T t) throws IOException {
        qVar.b(t.i()).b(t.m()).a(t.j(), s.c).a(t.k(), s.c).a(t.l(), a.a).b(t.q()).b(t.n()).b(t.o()).b(t.p());
    }

    protected void a(p pVar, T t, int i) throws IOException, ClassNotFoundException {
        t.d(pVar.i());
        t.e(pVar.i());
        t.a((Integer) pVar.a(s.c));
        t.b((Integer) pVar.a(s.c));
        t.a((a) pVar.a(a.a));
        t.f(pVar.i());
        t.a(pVar.d());
        t.b(pVar.d());
        t.c(pVar.d());
    }
}
