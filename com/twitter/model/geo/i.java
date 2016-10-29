package com.twitter.model.geo;

import com.twitter.util.serialization.k;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import java.io.IOException;

/* compiled from: Twttr */
class i extends k<g> {
    private i() {
    }

    protected /* synthetic */ Object b(p pVar, int i) throws IOException, ClassNotFoundException {
        return a(pVar, i);
    }

    protected void a(q qVar, g gVar) throws IOException {
        TwitterPlace.a.b(qVar, gVar.a());
        d.a.b(qVar, gVar.b());
        qVar.b(gVar.c());
    }

    protected g a(p pVar, int i) throws IOException, ClassNotFoundException {
        return new g((TwitterPlace) TwitterPlace.a.c(pVar), (d) d.a.a(pVar), pVar.i());
    }
}
