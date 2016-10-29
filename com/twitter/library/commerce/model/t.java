package com.twitter.library.commerce.model;

import com.twitter.util.serialization.n;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import com.twitter.util.serialization.s;
import java.io.IOException;
import java.math.BigDecimal;
import java.util.Calendar;
import java.util.Map;

/* compiled from: Twttr */
class t extends aa<r> {
    private t() {
    }

    protected /* synthetic */ Object b(p pVar, int i) throws IOException, ClassNotFoundException {
        return a(pVar, i);
    }

    protected void a(q qVar, r rVar) throws IOException {
        super.a(qVar, (y) rVar);
        qVar.b(r.p(rVar)).b(r.o(rVar)).b(r.n(rVar)).a(r.m(rVar), a()).b(r.l(rVar)).b(r.k(rVar)).a(r.j(rVar), s.f).b(r.i(rVar)).a(r.h(rVar), s.f).b(r.g(rVar)).a(r.f(rVar), s.l).b(r.e(rVar)).b(r.d(rVar)).b(r.c(rVar)).a(r.b(rVar), s.f).a(r.a(rVar), s.a(s.i, s.i));
    }

    protected r a(p pVar, int i) throws IOException, ClassNotFoundException {
        r rVar = new r();
        a(pVar, (y) rVar);
        r.a(rVar, pVar.i());
        r.b(rVar, pVar.i());
        r.c(rVar, pVar.i());
        r.a(rVar, (Calendar) pVar.a(a()));
        r.d(rVar, pVar.i());
        r.e(rVar, pVar.i());
        r.a(rVar, (Long) pVar.a(s.f));
        r.f(rVar, pVar.i());
        r.b(rVar, (Long) pVar.a(s.f));
        r.g(rVar, pVar.i());
        r.a(rVar, (BigDecimal) pVar.a(s.l));
        r.h(rVar, pVar.i());
        r.i(rVar, pVar.i());
        r.j(rVar, pVar.i());
        r.c(rVar, (Long) pVar.a(s.f));
        r.a(rVar, (Map) pVar.a(s.a(s.i, s.i)));
        return rVar;
    }

    private static n<Calendar> a() {
        return new u();
    }
}
