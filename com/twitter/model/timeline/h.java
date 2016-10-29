package com.twitter.model.timeline;

import com.twitter.util.serialization.k;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import java.io.IOException;

/* compiled from: Twttr */
class h extends k<g> {
    private h() {
    }

    protected /* synthetic */ Object b(p pVar, int i) throws IOException, ClassNotFoundException {
        return a(pVar, i);
    }

    protected void a(q qVar, g gVar) throws IOException {
        qVar.b(gVar.b).b(gVar.c).b(gVar.d).b(gVar.e);
    }

    protected g a(p pVar, int i) throws IOException, ClassNotFoundException {
        return new g(pVar.f(), pVar.i(), pVar.i(), pVar.i());
    }
}
