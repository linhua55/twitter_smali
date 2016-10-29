package com.twitter.model.search;

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
        qVar.b(gVar.b);
        qVar.b(gVar.c);
        qVar.b(gVar.d);
    }

    protected g a(p pVar, int i) throws IOException, ClassNotFoundException {
        return new g(pVar.p(), pVar.f(), pVar.f());
    }
}
