package com.twitter.library.commerce.model;

import com.twitter.util.serialization.k;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import java.io.IOException;

/* compiled from: Twttr */
class c extends k<a> {
    private c() {
    }

    protected /* synthetic */ Object b(p pVar, int i) throws IOException, ClassNotFoundException {
        return a(pVar, i);
    }

    protected void a(q qVar, a aVar) throws IOException {
        qVar.b(a.k(aVar)).b(a.j(aVar)).b(a.i(aVar)).b(a.h(aVar)).b(a.g(aVar)).b(a.f(aVar)).b(a.e(aVar)).b(a.d(aVar)).b(a.c(aVar)).b(a.b(aVar)).b(a.a(aVar));
    }

    protected a a(p pVar, int i) throws IOException, ClassNotFoundException {
        a aVar = new a();
        a.a(aVar, pVar.i());
        a.b(aVar, pVar.i());
        a.c(aVar, pVar.i());
        a.d(aVar, pVar.i());
        a.e(aVar, pVar.i());
        a.f(aVar, pVar.i());
        a.g(aVar, pVar.i());
        a.h(aVar, pVar.i());
        a.i(aVar, pVar.i());
        a.a(aVar, pVar.d());
        a.b(aVar, pVar.d());
        return aVar;
    }
}
