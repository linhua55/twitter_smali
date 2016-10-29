package com.twitter.library.commerce.model;

import com.twitter.library.commerce.model.CreditCard.Type;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import com.twitter.util.serialization.s;
import java.io.IOException;

/* compiled from: Twttr */
class ae extends g<ac> {
    private ae() {
    }

    protected /* synthetic */ Object b(p pVar, int i) throws IOException, ClassNotFoundException {
        return a(pVar, i);
    }

    protected void a(q qVar, ac acVar) throws IOException {
        super.a(qVar, (f) acVar);
        qVar.a(acVar.a(), s.a(Type.class)).b(acVar.b());
    }

    protected void a(p pVar, ac acVar, int i) throws IOException, ClassNotFoundException {
        super.a(pVar, (f) acVar, i);
        acVar.a((Type) pVar.a(s.a(Type.class)), pVar.i());
    }

    protected ac a(p pVar, int i) throws IOException, ClassNotFoundException {
        ac acVar = new ac();
        a(pVar, acVar, i);
        return acVar;
    }
}
