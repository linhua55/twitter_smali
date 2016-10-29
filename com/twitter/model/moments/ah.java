package com.twitter.model.moments;

import clf;
import com.twitter.util.serialization.k;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import java.io.IOException;

/* compiled from: Twttr */
class ah extends k<af> {
    private ah() {
    }

    protected /* synthetic */ Object b(p pVar, int i) throws IOException, ClassNotFoundException {
        return a(pVar, i);
    }

    protected void a(q qVar, af afVar) throws IOException {
        qVar.a(afVar.b, ab.a).a(afVar.c, clf.a);
    }

    protected af a(p pVar, int i) throws IOException, ClassNotFoundException {
        return new af((ab) pVar.b(ab.a), (clf) pVar.b(clf.a));
    }
}
