package com.twitter.model.av;

import com.twitter.util.serialization.k;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.s;
import java.io.IOException;
import java.util.Collection;

/* compiled from: Twttr */
class q extends k<n> {
    private q() {
    }

    protected /* synthetic */ Object b(p pVar, int i) throws IOException, ClassNotFoundException {
        return a(pVar, i);
    }

    protected void a(com.twitter.util.serialization.q qVar, n nVar) throws IOException {
        qVar.b(nVar.a());
        s.a(qVar, nVar.b(), s.c);
        s.a(qVar, nVar.c(), s.c);
        s.a(qVar, nVar.d(), s.c);
        s.a(qVar, nVar.e(), s.c);
        s.a(qVar, nVar.f(), s.c);
    }

    protected n a(p pVar, int i) throws IOException, ClassNotFoundException {
        boolean d = pVar.d();
        Collection b = s.b(pVar, s.c);
        Collection b2 = s.b(pVar, s.c);
        Collection b3 = s.b(pVar, s.c);
        Collection b4 = s.b(pVar, s.c);
        return new p().a(d).a(b).b(b2).c(b3).d(b4).e(s.b(pVar, s.c)).c();
    }
}
