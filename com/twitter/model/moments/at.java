package com.twitter.model.moments;

import clf;
import com.twitter.util.serialization.k;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import java.io.IOException;

/* compiled from: Twttr */
class at extends k<as> {
    private at() {
    }

    protected /* synthetic */ Object b(p pVar, int i) throws IOException, ClassNotFoundException {
        return a(pVar, i);
    }

    protected void a(q qVar, as asVar) throws IOException {
        qVar.a(asVar.b, ab.a).a(asVar.c, clf.a);
    }

    protected as a(p pVar, int i) throws IOException, ClassNotFoundException {
        return new as((ab) pVar.b(ab.a), (clf) pVar.b(clf.a));
    }
}
