package com.twitter.model.moments;

import com.twitter.util.serialization.k;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import java.io.IOException;

/* compiled from: Twttr */
class n extends k<k> {
    private n() {
    }

    protected /* synthetic */ Object b(p pVar, int i) throws IOException, ClassNotFoundException {
        return a(pVar, i);
    }

    protected void a(q qVar, k kVar) throws IOException {
        qVar.a(kVar.c, g.a).a(kVar.d, g.a).a(kVar.e, g.a).a(kVar.f, g.a).b(kVar.g);
    }

    protected k a(p pVar, int i) throws IOException, ClassNotFoundException {
        return new k((g) pVar.a(g.a), (g) pVar.a(g.a), (g) pVar.a(g.a), pVar.d(), null);
    }
}
