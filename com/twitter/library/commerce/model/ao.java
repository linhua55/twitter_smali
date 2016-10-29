package com.twitter.library.commerce.model;

import com.twitter.util.serialization.k;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import com.twitter.util.serialization.s;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;

/* compiled from: Twttr */
class ao extends k<am> {
    private ao() {
    }

    protected /* synthetic */ Object b(p pVar, int i) throws IOException, ClassNotFoundException {
        return a(pVar, i);
    }

    protected void a(q qVar, am amVar) throws IOException {
        qVar.a(am.i(amVar), s.a(CreditCard.d)).a(am.h(amVar), s.a(CreditCard.d)).a(am.g(amVar), s.a(a.a)).a(am.f(amVar), s.a(m.a)).a(am.e(amVar), s.a(af.a)).a(am.d(amVar), a.a).a(am.c(amVar), CreditCard.d).a(am.b(amVar), m.a).a(am.a(amVar), af.a);
    }

    protected am a(p pVar, int i) throws IOException, ClassNotFoundException {
        am amVar = new am();
        am.a(amVar, new ArrayList((Collection) s.a(CreditCard.d).c(pVar)));
        am.b(amVar, new ArrayList((Collection) s.a(CreditCard.d).c(pVar)));
        am.c(amVar, new ArrayList((Collection) s.a(a.a).c(pVar)));
        am.d(amVar, new ArrayList((Collection) s.a(m.a).c(pVar)));
        am.e(amVar, new ArrayList((Collection) s.a(af.a).c(pVar)));
        am.a(amVar, (a) pVar.a(a.a));
        am.a(amVar, (CreditCard) pVar.a(CreditCard.d));
        am.a(amVar, (m) pVar.a(m.a));
        am.a(amVar, (af) pVar.a(af.a));
        return amVar;
    }
}
