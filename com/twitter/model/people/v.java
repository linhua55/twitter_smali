package com.twitter.model.people;

import com.twitter.util.serialization.k;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import java.io.IOException;

/* compiled from: Twttr */
class v extends k<t> {
    private v() {
    }

    protected /* synthetic */ Object b(p pVar, int i) throws IOException, ClassNotFoundException {
        return a(pVar, i);
    }

    protected void a(q qVar, t tVar) throws IOException {
        qVar.b(tVar.b).a(tVar.c, w.g);
    }

    protected t a(p pVar, int i) throws IOException, ClassNotFoundException {
        return new t(pVar.p(), (w) pVar.b(w.g));
    }
}
