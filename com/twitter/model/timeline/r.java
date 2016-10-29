package com.twitter.model.timeline;

import com.twitter.util.object.e;
import com.twitter.util.serialization.k;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import java.io.IOException;

/* compiled from: Twttr */
class r extends k<p> {
    private r() {
    }

    protected /* synthetic */ Object b(p pVar, int i) throws IOException, ClassNotFoundException {
        return a(pVar, i);
    }

    protected void a(q qVar, p pVar) throws IOException {
        qVar.b(pVar.b).b(pVar.c);
    }

    protected p a(p pVar, int i) throws IOException, ClassNotFoundException {
        return new p((String) e.a(pVar.i()), (String) e.a(pVar.i()));
    }
}
