package com.twitter.model.moments;

import com.twitter.model.timeline.aj;
import com.twitter.util.serialization.k;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import java.io.IOException;

/* compiled from: Twttr */
class ar extends k<aq> {
    private ar() {
    }

    protected /* synthetic */ Object b(p pVar, int i) throws IOException, ClassNotFoundException {
        return a(pVar, i);
    }

    protected void a(q qVar, aq aqVar) throws IOException {
        qVar.b(aqVar.b).a(aqVar.c, aj.a).b(aqVar.d);
    }

    protected aq a(p pVar, int i) throws IOException, ClassNotFoundException {
        return new aq(pVar.p(), (aj) pVar.b(aj.a), pVar.i());
    }
}
