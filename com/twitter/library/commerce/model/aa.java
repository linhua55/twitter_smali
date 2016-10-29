package com.twitter.library.commerce.model;

import com.twitter.util.serialization.k;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import com.twitter.util.serialization.s;
import java.io.IOException;
import java.math.BigDecimal;

/* compiled from: Twttr */
public abstract class aa<T extends y> extends k<T> {
    protected aa() {
    }

    protected void a(q qVar, T t) throws IOException {
        qVar.b(t.n()).b(t.o()).b(t.p()).b(t.w()).b(t.x()).b(t.y()).b(t.z()).e(t.q()).a(t.r(), s.l).a(t.s(), s.l).a(t.v(), s.l).a(t.t(), a.a).a(t.u(), CreditCard.d);
    }

    protected void a(p pVar, T t) throws IOException, ClassNotFoundException {
        t.k(pVar.i());
        t.l(pVar.i());
        t.m(pVar.i());
        t.n(pVar.i());
        t.o(pVar.i());
        t.p(pVar.i());
        t.q(pVar.i());
        t.a(pVar.e());
        t.b((BigDecimal) pVar.a(s.l));
        t.c((BigDecimal) pVar.a(s.l));
        t.d((BigDecimal) pVar.a(s.l));
        t.a((a) pVar.a(a.a));
        t.a((CreditCard) pVar.a(CreditCard.d));
    }
}
