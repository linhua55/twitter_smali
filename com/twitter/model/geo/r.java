package com.twitter.model.geo;

import com.twitter.util.serialization.k;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import java.io.IOException;

/* compiled from: Twttr */
class r extends k<q> {
    private r() {
    }

    protected /* synthetic */ Object b(p pVar, int i) throws IOException, ClassNotFoundException {
        return a(pVar, i);
    }

    protected void a(q qVar, q qVar2) throws IOException {
        qVar.b(qVar2.b);
    }

    protected q a(p pVar, int i) throws IOException, ClassNotFoundException {
        return new q(pVar.i());
    }
}
