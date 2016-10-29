package com.twitter.model.core;

import com.twitter.util.serialization.k;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import java.io.IOException;

/* compiled from: Twttr */
class bs extends k<bp> {
    private bs() {
    }

    protected /* synthetic */ Object b(p pVar, int i) throws IOException, ClassNotFoundException {
        return a(pVar, i);
    }

    protected void a(q qVar, bp bpVar) throws IOException {
        qVar.a(bpVar.c, EscherbirdAnnotation.a).a(bpVar.d, bt.a);
    }

    protected bp a(p pVar, int i) throws IOException, ClassNotFoundException {
        return new bp((EscherbirdAnnotation) EscherbirdAnnotation.a.c(pVar), (bt) bt.a.c(pVar));
    }
}
